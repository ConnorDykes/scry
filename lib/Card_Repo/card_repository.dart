import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:scry/card_model.dart';

class CardRepository {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<String> fetchCurrentPrice({required String cardID}) async {
    final client = http.Client();
    var uri = Uri.parse('https://api.scryfall.com/cards/${cardID}');
    try {
      var response = await client.get(uri);
      if (response.statusCode == 200) {
        debugPrint('[CardRepo: fetchCurrentPrice] - Received Card');
        final body = json.decode(response.body);

        CardModel card = CardModel.fromJson(body);
        return card.prices?.usd ?? "N/A";
      } else {
        debugPrint(response.body);
        return 'Error';
      }
    } catch (e) {
      debugPrint('[CardRepo: fetchCurrentPrice] ERROR - ${e.toString()}');
      return 'Error';
    }
  }

  Future<List<CardModel>?> searchNamed({required String name}) async {
    final client = http.Client();
    final query = name.toLowerCase().replaceAll(" ", "+");

    var uri = Uri.parse('https://api.scryfall.com/cards/search?q=$query ');
    try {
      var response = await client.get(uri);
      if (response.statusCode == 200) {
        debugPrint('got Cards');
        List<CardModel> cards = [];

        // getPage({required String url}) async {
        //   debugPrint('getting more pages');
        //   var uri = Uri.parse(url);
        //   var response = await client.get(uri);
        //   if (response.statusCode == 200) {
        //     var body = json.decode(response.body);
        //     List data = body['data'];
        //     List<CardModel> page =
        //         List<CardModel>.from(data.map((x) => CardModel.fromJson(x)));
        //     cards.addAll(page);

        //     if (body['has_more'] == true) {
        //       debugPrint(cards.length.toString());
        //       getPage(url: body['next_page']);
        //     } else {
        //       return cards;
        //     }
        //   }
        //   if (response.statusCode == 404) {
        //     return [];
        //   }
        // }

        final body = json.decode(response.body);
        List data = body['data'];
        List<CardModel> page =
            List<CardModel>.from(data.map((x) => CardModel.fromJson(x)));
        cards.addAll(page);

        //* these function remove Alchemy cards
        //cards.removeWhere((card) => card.legalities!.alchemy == 'legal');
        // cards.removeWhere((card) => !card.games!.contains('paper'));

        // if (body['has_more'] == true
        //   debugPrint('has more pages');
        //   getPage(url: body['next_page']);
        // }

        return cards;
      }
      if (response.statusCode == 404) {
        debugPrint(response.body);
        return [];
      }
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
    return null;
  }

  // Future<bool> createTrade({required Map<String, dynamic> trade}) async {
  //   try {
  //     // Get a reference to the Document in the Trades collection
  //     DocumentReference docRef = _firebaseFirestore.collection('trades').doc();

  //     // Set the values of the Trade Document
  //     await docRef.set(trade);

  //     // Add the Doc id of the Trade document to the users 'trades' field
  //     await _firebaseFirestore.collection('users').doc(trade['userID']).set({
  //       'trades': FieldValue.arrayUnion([docRef.id])
  //     }, SetOptions(merge: true));
  //     return true;
  //   } catch (e) {
  //     debugPrint(e.toString());
  //     return false;
  //   }
  // }

  Future<bool> createTradeOffer({required Map<String, dynamic> offer}) async {
    print(offer['offeringUserID']);
    try {
      // Get a reference to the Document in the Sending Users users Offers  collection
      final offeringUserDoc = await _firebaseFirestore
          .collection('users')
          .doc(offer['offeringUserID'])
          .collection('offers')
          .doc();

      offer['id'] = offeringUserDoc.id;

      offeringUserDoc.set(offer);

      // Get a reference to the Document in the Receiving Users users Offers collection
      final receivingUserDoc = await _firebaseFirestore
          .collection('users')
          .doc(offer['recipientUserID'])
          .collection('offers')
          .doc(offer['id'])
          .set(offer);

      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
