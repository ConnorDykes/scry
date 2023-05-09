import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Messages/Messages_Model/message_model.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';
import 'package:scry/Trade/Trade_Model/trade_model.dart';

class CreateTradeRepo {
  CreateTradeRepo({required this.tradePost, required this.currentUser});
  final UserModel currentUser;
  final TradePostModel tradePost;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  // check if chat already exists, otherwise creates one and adds the message
  Future<bool> sendMessage({required String message}) async {
    bool chatExists = await checkForExistingChat();
    if (chatExists) {
      debugPrint('Chat Exists');
      return false;
    } else {
      try {
        final List users = [currentUser.id, tradePost.userID];
        users.sort();

        final chatDocRef = _firebaseFirestore.collection('chats').doc();

        Map<String, dynamic> chat = {
          'id': chatDocRef.id,
          'offer': OfferModel.empty.toJson(),
          'card': tradePost.cards.first.toJson(),
          'users': users
        };

        await chatDocRef.set(chat);

        final time = DateTime.now().millisecondsSinceEpoch;

        final messageDocRef = chatDocRef.collection('messages').doc();

        MessageModel messageModel = MessageModel(
            id: messageDocRef.id,
            message: message,
            sendingUserID: currentUser.id,
            sendingUsername: currentUser.fullName,
            receivingUserID: tradePost.userID,
            receivingUsername: tradePost.userName,
            createDateInMillisecondsSinceEpoch: time);

        await messageDocRef.set(messageModel.toJson());

        return true;
      } catch (e) {
        debugPrint(e.toString());
        return false;
      }
    }
  }

  Future<void> deleteTrade() async {
    await _firebaseFirestore.collection('trades').doc(tradePost.id).delete();
    await _firebaseFirestore.collection('users').doc(currentUser.id).set({
      'trades': FieldValue.arrayRemove([tradePost.id])
    }, SetOptions(merge: true));
  }

// We check to see if there is a chat that already exists between these users
  // and if that chat is also about the same card
  Future<bool> checkForExistingChat() async {
    final List users = [currentUser.id, tradePost.userID];
    users.sort();

    try {
      return await _firebaseFirestore
          .collection('chats')
          .where('users', isEqualTo: users)
          .where('card.id', isEqualTo: '${tradePost.cards.first.id}')
          .get()
          .then((snapshot) {
        debugPrint(snapshot.docs.toString());
        if (snapshot.size > 0) {
          return true;
        } else {
          return false;
        }
      });
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<bool> createTrade({required Map<String, dynamic> trade}) async {
    try {
      // Get a reference to the Document in the Trades collection
      DocumentReference docRef = _firebaseFirestore.collection('trades').doc();
      final newTrade = trade;
      newTrade['id'] = docRef.id;

      // Set the values of the Trade Document
      await docRef.set(newTrade);

      // Add the Doc id of the Trade document to the users 'trades' field
      await _firebaseFirestore.collection('users').doc(trade['userID']).set({
        'trades': FieldValue.arrayUnion([docRef.id])
      }, SetOptions(merge: true));
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
