import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:scry/card_model.dart';

class CardRepository {
  Future<List<CardModel>?> searchNamed({required String name}) async {
    final client = http.Client();
    final query = name.toLowerCase().replaceAll(" ", "+");
    debugPrint(query);

    var uri = Uri.parse('https://api.scryfall.com/cards/search?q=$query ');
    try {
      var response = await client.get(uri);
      if (response.statusCode == 200) {
        debugPrint('got Cards');
        List<CardModel> cards = [];

        getPage({required String url}) async {
          debugPrint('getting more pages');
          var uri = Uri.parse(url);
          var response = await client.get(uri);
          if (response.statusCode == 200) {
            final body = json.decode(response.body);
            List data = body['data'];
            List<CardModel> page =
                List<CardModel>.from(body.map((x) => CardModel.fromJson(x)));
            cards.addAll(page);
            if (body['has_more'] == true) {
              debugPrint(cards.length.toString());
              getPage(url: body['next_page']);
            } else {
              return cards;
            }
          }
        }

        final body = json.decode(response.body);
        List data = body['data'];
        List<CardModel> page =
            List<CardModel>.from(data.map((x) => CardModel.fromJson(x)));
        cards.addAll(page);
        if (body['has_more'] == true) {
          debugPrint('has more pages');
          getPage(url: body['next_page']);
        }
        return cards;
      }
      if (response.statusCode == 404) {
        debugPrint(response.body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
