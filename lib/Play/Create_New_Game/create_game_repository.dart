import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Play/Game_Model/game_model.dart';

class CreateGameRepo {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<bool> createGame(
      {required GameModel game, required UserModel user}) async {
    final gameMap = {
      'creator': game.creator!.toJson(),
      'title': game.title,
      'description': game.description,
      'cost': game.cost,
      'location': game.location,
      'dateAndTime': game.dateAndTime,
      'maxPlayerCount': game.maxPlayerCount,
      'minPlayerCount': game.minPlayerCount,
      'format': game.format.name,
    };

    try {
      //create the game doc in firebase
      final gameDoc = await _firebaseFirestore.collection('games').add(gameMap);
      await _firebaseFirestore
          .collection('games')
          .doc(gameDoc.id)
          .update({'id': gameDoc.id});

      // add the Players to the players sub collection
      game.players.forEach((player) async {
        await _firebaseFirestore
            .collection('games')
            .doc(gameDoc.id)
            .collection('players')
            .add(player.toJson());
      });

      game.players.forEach((player) async {
        await _firebaseFirestore.collection('users').doc(player.id).update({
          'games': FieldValue.arrayUnion([gameDoc.id])
        });
      });

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
