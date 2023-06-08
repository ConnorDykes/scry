import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scry/Play/Game_Model/game_model.dart';

class CreateGameRepo {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<bool> createGame({required GameModel game}) async {
    try {
      await _firebaseFirestore.collection('games').add(game.toJson());
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<bool> updateGame(
      {required Map<String, dynamic> game, required String gameDocID}) async {
    try {
      await _firebaseFirestore.collection('games').doc(gameDocID).update(game);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
