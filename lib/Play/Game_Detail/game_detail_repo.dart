import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Play/Game_Detail/GameChatMessageModel/game_chat_message_model.dart';
import 'package:scry/Play/Game_Model/game_model.dart';
import 'package:scry/main.dart';

class GameDetailRepo {
  GameDetailRepo({
    required this.game,
    required this.currentUser,
  });
  final GameModel game;
  final UserModel currentUser;

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> sendMessage({required GameChatMessageModel message}) async {
    try {
      await _firebaseFirestore
          .collection('games')
          .doc(game.id)
          .collection('messages')
          .add(message.toJson());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> deleteGame() async {
    try {
      QuerySnapshot<Map<String, dynamic>> players = await _firebaseFirestore
          .collection('games')
          .doc(game.id)
          .collection('players')
          .get();

      players.docs.forEach((player) async {
        await _firebaseFirestore
            .collection('users')
            .doc(player.data()['id'])
            .update({
          'games': FieldValue.arrayRemove([game.id])
        });
        await _firebaseFirestore
            .collection('games')
            .doc(game.id)
            .collection('players')
            .doc(player.id)
            .delete();
      });

      await _firebaseFirestore.collection('games').doc(game.id).delete();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> joinGame() async {
    try {
      await _firebaseFirestore
          .collection('games')
          .doc(game.id)
          .collection('players')
          .doc()
          .set(currentUser.toJson());

      await _firebaseFirestore.collection('users').doc(currentUser.id).update({
        'games': FieldValue.arrayUnion([game.id])
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> leaveGame() async {
    try {
      QuerySnapshot<Map<String, dynamic>> playerDoc = await _firebaseFirestore
          .collection('games')
          .doc(game.id)
          .collection('players')
          .where('id', isEqualTo: currentUser.id)
          .get();

      playerDoc.docs.forEach((player) async {
        await _firebaseFirestore
            .collection('games')
            .doc(game.id)
            .collection('players')
            .doc(player.id)
            .delete();
      });

      await _firebaseFirestore.collection('users').doc(currentUser.id).update({
        'games': FieldValue.arrayRemove([game.id])
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> playersStream() {
    return _firebaseFirestore
        .collection('games')
        .doc(game.id)
        .collection('players')
        .snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> messagesStream() {
    return _firebaseFirestore
        .collection('games')
        .doc(game.id)
        .collection('messages')
        .snapshots();
  }
}
