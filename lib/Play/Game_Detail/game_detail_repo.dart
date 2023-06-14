import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:scry/Play/Game_Model/game_model.dart';

class GameDetailRepo {
  GameDetailRepo({required this.game});
  final GameModel game;

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  void deleteGame({required String gameDocID}) async {
    try {
      await _firebaseFirestore.collection('games').doc(gameDocID).delete();
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
