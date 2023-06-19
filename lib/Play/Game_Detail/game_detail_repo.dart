import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Play/Game_Model/game_model.dart';

class GameDetailRepo {
  GameDetailRepo({
    required this.game,
    required this.currentUser,
  });
  final GameModel game;
  final UserModel currentUser;

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> deleteGame() async {
    try {
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
}
