import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scry/Messages/Chat_Model/chat_model.dart';
import 'package:scry/Messages/Messages_Model/message_model.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';

class TradeOfferRepo {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<bool> reject({required OfferModel offer}) async {
    try {
      await _firebaseFirestore
          .collection('users')
          .doc(offer.offeringUserID)
          .collection('offers')
          .doc(offer.id)
          .delete();

      await _firebaseFirestore
          .collection('users')
          .doc(offer.recipientUserID)
          .collection('offers')
          .doc(offer.id)
          .delete();

      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<bool> accept(
      {required OfferModel offer, required String message}) async {
    final jsonOffer = offer.toJson();
    jsonOffer['offeredCards'] = [offer.offeredCards.first.toJson()];
    jsonOffer['availableCards'] = [offer.availableCards.first.toJson()];

    try {
      // create new doc inside chats collection
      final chatDocRef = _firebaseFirestore.collection('chats').doc();

      // the chat object we add to the collection
      Map<String, dynamic> chat = {
        'id': chatDocRef.id,
        'offer': jsonOffer,
        'users': [offer.offeringUserID, offer.recipientUserID]
      };
      debugPrint('trying to set chat');
      // then we add it to the database
      await chatDocRef.set(chat);
      debugPrint('chat was set');
      // we use this to give the message a timestamp
      final createdAt = DateTime.now().millisecondsSinceEpoch;

      final messageDocRef = _firebaseFirestore
          .collection('chats')
          .doc(chatDocRef.id)
          .collection('messages')
          .doc();

      // the message we are adding to the chats messages collection
      MessageModel messageModel = MessageModel(
          sendingUserID: offer.recipientUserID,
          receivingUserID: offer.offeringUserID,
          sendingUsername: offer.recipientName,
          receivingUsername: offer.offeringUserName,
          message: message,
          isRead: false,
          id: messageDocRef.id,
          createDateInMillisecondsSinceEpoch: createdAt);

      debugPrint('trying to set message');
      // Then we add the messageModel to the messages collection in the chat
      await messageDocRef.set(messageModel.toJson());
      debugPrint('message set');
      //then remove the offer from the data base because it was moved to chats
      await _firebaseFirestore
          .collection('users')
          .doc(offer.offeringUserID)
          .collection('offers')
          .doc(offer.id)
          .delete();

      await _firebaseFirestore
          .collection('users')
          .doc(offer.recipientUserID)
          .collection('offers')
          .doc(offer.id)
          .delete();

      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<bool> removeOffer({required OfferModel offer}) async {
    final jsonOffer = offer.toJson();
    jsonOffer['offeredCards'] = [offer.offeredCards.first.toJson()];
    jsonOffer['availableCards'] = [offer.availableCards.first.toJson()];

    try {
      //then remove the offer from the data base because it was moved to chats
      await _firebaseFirestore
          .collection('users')
          .doc(offer.offeringUserID)
          .collection('offers')
          .doc(offer.id)
          .delete();

      await _firebaseFirestore
          .collection('users')
          .doc(offer.recipientUserID)
          .collection('offers')
          .doc(offer.id)
          .delete();

      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
