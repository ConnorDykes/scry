// To parse this JSON data, do
//
//     final cardModel = cardModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

class CardModel {
  CardModel({
    this.object,
    this.id,
    this.oracleId,
    this.multiverseIds,
    this.tcgplayerId,
    this.cardmarketId,
    this.name,
    this.cardFaces,
    this.lang,
    this.releasedAt,
    this.uri,
    this.scryfallUri,
    this.layout,
    this.highresImage,
    this.imageStatus,
    this.imageUris,
    this.manaCost,
    this.cmc,
    this.typeLine,
    this.oracleText,
    this.power,
    this.toughness,
    this.colors,
    this.colorIdentity,
    this.keywords,
    this.legalities,
    this.games,
    this.reserved,
    this.foil,
    this.nonfoil,
    this.finishes,
    this.oversized,
    this.promo,
    this.reprint,
    this.variation,
    this.setId,
    this.cardModelSet,
    this.setName,
    this.setType,
    this.setUri,
    this.setSearchUri,
    this.scryfallSetUri,
    this.rulingsUri,
    this.printsSearchUri,
    this.collectorNumber,
    this.digital,
    this.rarity,
    this.cardBackId,
    this.artist,
    this.artistIds,
    this.illustrationId,
    this.borderColor,
    this.frame,
    this.fullArt,
    this.textless,
    this.booster,
    this.storySpotlight,
    this.edhrecRank,
    this.prices,
    this.relatedUris,
    this.purchaseUris,
  });

  const CardModel.empty({
    this.object,
    this.id,
    this.oracleId,
    this.multiverseIds,
    this.tcgplayerId,
    this.cardmarketId,
    this.cardFaces,
    this.name,
    this.lang,
    this.releasedAt,
    this.uri,
    this.scryfallUri,
    this.layout,
    this.highresImage,
    this.imageStatus,
    this.imageUris,
    this.manaCost,
    this.cmc,
    this.typeLine,
    this.oracleText,
    this.power,
    this.toughness,
    this.colors,
    this.colorIdentity,
    this.keywords,
    this.legalities,
    this.games,
    this.reserved,
    this.foil,
    this.nonfoil,
    this.finishes,
    this.oversized,
    this.promo,
    this.reprint,
    this.variation,
    this.setId,
    this.cardModelSet,
    this.setName,
    this.setType,
    this.setUri,
    this.setSearchUri,
    this.scryfallSetUri,
    this.rulingsUri,
    this.printsSearchUri,
    this.collectorNumber,
    this.digital,
    this.rarity,
    this.cardBackId,
    this.artist,
    this.artistIds,
    this.illustrationId,
    this.borderColor,
    this.frame,
    this.fullArt,
    this.textless,
    this.booster,
    this.storySpotlight,
    this.edhrecRank,
    this.prices,
    this.relatedUris,
    this.purchaseUris,
  });

  final String? object;
  final String? id;
  final String? oracleId;
  final List<int>? multiverseIds;
  final int? tcgplayerId;
  final int? cardmarketId;
  final String? name;
  final String? lang;
  final DateTime? releasedAt;
  final List<CardFaces>? cardFaces;
  final String? uri;
  final String? scryfallUri;
  final String? layout;
  final bool? highresImage;
  final String? imageStatus;
  final ImageUris? imageUris;
  final String? manaCost;
  final double? cmc;
  final String? typeLine;
  final String? oracleText;
  final String? power;
  final String? toughness;
  final List<String>? colors;
  final List<String>? colorIdentity;
  final List<dynamic>? keywords;
  final Legalities? legalities;
  final List<String>? games;
  final bool? reserved;
  final bool? foil;
  final bool? nonfoil;
  final List<String>? finishes;
  final bool? oversized;
  final bool? promo;
  final bool? reprint;
  final bool? variation;
  final String? setId;
  final String? cardModelSet;
  final String? setName;
  final String? setType;
  final String? setUri;
  final String? setSearchUri;
  final String? scryfallSetUri;
  final String? rulingsUri;
  final String? printsSearchUri;
  final String? collectorNumber;
  final bool? digital;
  final String? rarity;
  final String? cardBackId;
  final String? artist;
  final List<String>? artistIds;
  final String? illustrationId;
  final String? borderColor;
  final String? frame;
  final bool? fullArt;
  final bool? textless;
  final bool? booster;
  final bool? storySpotlight;
  final int? edhrecRank;
  final Prices? prices;
  final RelatedUris? relatedUris;
  final PurchaseUris? purchaseUris;

  CardModel copyWith({
    String? object,
    String? id,
    String? oracleId,
    final List<CardFaces>? cardFaces,
    List<int>? multiverseIds,
    int? tcgplayerId,
    int? cardmarketId,
    String? name,
    String? lang,
    DateTime? releasedAt,
    String? uri,
    String? scryfallUri,
    String? layout,
    bool? highresImage,
    String? imageStatus,
    ImageUris? imageUris,
    String? manaCost,
    double? cmc,
    String? typeLine,
    String? oracleText,
    String? power,
    String? toughness,
    List<String>? colors,
    List<String>? colorIdentity,
    List<dynamic>? keywords,
    Legalities? legalities,
    List<String>? games,
    bool? reserved,
    bool? foil,
    bool? nonfoil,
    List<String>? finishes,
    bool? oversized,
    bool? promo,
    bool? reprint,
    bool? variation,
    String? setId,
    String? cardModelSet,
    String? setName,
    String? setType,
    String? setUri,
    String? setSearchUri,
    String? scryfallSetUri,
    String? rulingsUri,
    String? printsSearchUri,
    String? collectorNumber,
    bool? digital,
    String? rarity,
    String? cardBackId,
    String? artist,
    List<String>? artistIds,
    String? illustrationId,
    String? borderColor,
    String? frame,
    bool? fullArt,
    bool? textless,
    bool? booster,
    bool? storySpotlight,
    int? edhrecRank,
    Prices? prices,
    RelatedUris? relatedUris,
    PurchaseUris? purchaseUris,
  }) =>
      CardModel(
        object: object ?? this.object,
        id: id ?? this.id,
        oracleId: oracleId ?? this.oracleId,
        multiverseIds: multiverseIds ?? this.multiverseIds,
        tcgplayerId: tcgplayerId ?? this.tcgplayerId,
        cardmarketId: cardmarketId ?? this.cardmarketId,
        name: name ?? this.name,
        lang: lang ?? this.lang,
        releasedAt: releasedAt ?? this.releasedAt,
        uri: uri ?? this.uri,
        scryfallUri: scryfallUri ?? this.scryfallUri,
        layout: layout ?? this.layout,
        highresImage: highresImage ?? this.highresImage,
        imageStatus: imageStatus ?? this.imageStatus,
        imageUris: imageUris ?? this.imageUris,
        manaCost: manaCost ?? this.manaCost,
        cmc: cmc ?? this.cmc,
        typeLine: typeLine ?? this.typeLine,
        oracleText: oracleText ?? this.oracleText,
        power: power ?? this.power,
        toughness: toughness ?? this.toughness,
        cardFaces: cardFaces ?? this.cardFaces,
        colors: colors ?? this.colors,
        colorIdentity: colorIdentity ?? this.colorIdentity,
        keywords: keywords ?? this.keywords,
        legalities: legalities ?? this.legalities,
        games: games ?? this.games,
        reserved: reserved ?? this.reserved,
        foil: foil ?? this.foil,
        nonfoil: nonfoil ?? this.nonfoil,
        finishes: finishes ?? this.finishes,
        oversized: oversized ?? this.oversized,
        promo: promo ?? this.promo,
        reprint: reprint ?? this.reprint,
        variation: variation ?? this.variation,
        setId: setId ?? this.setId,
        cardModelSet: cardModelSet ?? this.cardModelSet,
        setName: setName ?? this.setName,
        setType: setType ?? this.setType,
        setUri: setUri ?? this.setUri,
        setSearchUri: setSearchUri ?? this.setSearchUri,
        scryfallSetUri: scryfallSetUri ?? this.scryfallSetUri,
        rulingsUri: rulingsUri ?? this.rulingsUri,
        printsSearchUri: printsSearchUri ?? this.printsSearchUri,
        collectorNumber: collectorNumber ?? this.collectorNumber,
        digital: digital ?? this.digital,
        rarity: rarity ?? this.rarity,
        cardBackId: cardBackId ?? this.cardBackId,
        artist: artist ?? this.artist,
        artistIds: artistIds ?? this.artistIds,
        illustrationId: illustrationId ?? this.illustrationId,
        borderColor: borderColor ?? this.borderColor,
        frame: frame ?? this.frame,
        fullArt: fullArt ?? this.fullArt,
        textless: textless ?? this.textless,
        booster: booster ?? this.booster,
        storySpotlight: storySpotlight ?? this.storySpotlight,
        edhrecRank: edhrecRank ?? this.edhrecRank,
        prices: prices ?? this.prices,
        relatedUris: relatedUris ?? this.relatedUris,
        purchaseUris: purchaseUris ?? this.purchaseUris,
      );

  factory CardModel.fromRawJson(String str) =>
      CardModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CardModel.fromJson(Map<String, dynamic> json) => CardModel(
        object: json["object"],
        id: json["id"],
        oracleId: json["oracle_id"],
        multiverseIds: json["multiverse_ids"] == null
            ? []
            : List<int>.from(json["multiverse_ids"]!.map((x) => x)),
        tcgplayerId: json["tcgplayer_id"],
        cardmarketId: json["cardmarket_id"],
        name: json["name"],
        lang: json["lang"],
        releasedAt: json["released_at"] == null
            ? null
            : DateTime.parse(json["released_at"]),
        uri: json["uri"],
        scryfallUri: json["scryfall_uri"],
        layout: json["layout"],
        highresImage: json["highres_image"],
        imageStatus: json["image_status"],
        imageUris: json["image_uris"] == null
            ? null
            : ImageUris.fromJson(json["image_uris"]),
        manaCost: json["mana_cost"],
        cmc: json["cmc"],
        typeLine: json["type_line"],
        oracleText: json["oracle_text"],
        power: json["power"],
        toughness: json["toughness"],
        colors: json["colors"] == null
            ? []
            : List<String>.from(json["colors"]!.map((x) => x)),
        colorIdentity: json["color_identity"] == null
            ? []
            : List<String>.from(json["color_identity"]!.map((x) => x)),
        keywords: json["keywords"] == null
            ? []
            : List<dynamic>.from(json["keywords"]!.map((x) => x)),
        legalities: json["legalities"] == null
            ? null
            : Legalities.fromJson(json["legalities"]),
        games: json["games"] == null
            ? []
            : List<String>.from(json["games"]!.map((x) => x)),
        reserved: json["reserved"],
        foil: json["foil"],
        nonfoil: json["nonfoil"],
        finishes: json["finishes"] == null
            ? []
            : List<String>.from(json["finishes"]!.map((x) => x)),
        oversized: json["oversized"],
        promo: json["promo"],
        reprint: json["reprint"],
        variation: json["variation"],
        setId: json["set_id"],
        cardModelSet: json["set"],
        setName: json["set_name"],
        setType: json["set_type"],
        setUri: json["set_uri"],
        setSearchUri: json["set_search_uri"],
        scryfallSetUri: json["scryfall_set_uri"],
        rulingsUri: json["rulings_uri"],
        printsSearchUri: json["prints_search_uri"],
        collectorNumber: json["collector_number"],
        digital: json["digital"],
        rarity: json["rarity"],
        cardBackId: json["card_back_id"],
        artist: json["artist"],
        artistIds: json["artist_ids"] == null
            ? []
            : List<String>.from(json["artist_ids"]!.map((x) => x)),
        illustrationId: json["illustration_id"],
        borderColor: json["border_color"],
        frame: json["frame"],
        fullArt: json["full_art"],
        textless: json["textless"],
        booster: json["booster"],
        storySpotlight: json["story_spotlight"],
        edhrecRank: json["edhrec_rank"],
        prices: json["prices"] == null ? null : Prices.fromJson(json["prices"]),
        relatedUris: json["related_uris"] == null
            ? null
            : RelatedUris.fromJson(json["related_uris"]),
        purchaseUris: json["purchase_uris"] == null
            ? null
            : PurchaseUris.fromJson(json["purchase_uris"]),
        cardFaces: json["card_faces"] == null
            ? null
            : List<CardFaces>.from(
                json["card_faces"]!.map((x) => CardFaces.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "object": object,
        "id": id,
        "oracle_id": oracleId,
        "multiverse_ids": multiverseIds == null
            ? []
            : List<dynamic>.from(multiverseIds!.map((x) => x)),
        "tcgplayer_id": tcgplayerId,
        "cardmarket_id": cardmarketId,
        "name": name,
        "lang": lang,
        "released_at": releasedAt == null
            ? null
            : "${releasedAt!.year.toString().padLeft(4, '0')}-${releasedAt!.month.toString().padLeft(2, '0')}-${releasedAt!.day.toString().padLeft(2, '0')}",
        "uri": uri,
        "scryfall_uri": scryfallUri,
        "layout": layout,
        "highres_image": highresImage,
        "image_status": imageStatus,
        "image_uris": imageUris?.toJson(),
        "mana_cost": manaCost,
        "cmc": cmc,
        "type_line": typeLine,
        "oracle_text": oracleText,
        "power": power,
        "toughness": toughness,
        "colors":
            colors == null ? [] : List<dynamic>.from(colors!.map((x) => x)),
        "color_identity": colorIdentity == null
            ? []
            : List<dynamic>.from(colorIdentity!.map((x) => x)),
        "keywords":
            keywords == null ? [] : List<dynamic>.from(keywords!.map((x) => x)),
        "legalities": legalities?.toJson(),
        "games": games == null ? [] : List<dynamic>.from(games!.map((x) => x)),
        "reserved": reserved,
        "foil": foil,
        "nonfoil": nonfoil,
        "card_faces": cardFaces == null
            ? []
            : List<dynamic>.from(cardFaces!.map((x) => x)),
        "finishes":
            finishes == null ? [] : List<dynamic>.from(finishes!.map((x) => x)),
        "oversized": oversized,
        "promo": promo,
        "reprint": reprint,
        "variation": variation,
        "set_id": setId,
        "set": cardModelSet,
        "set_name": setName,
        "set_type": setType,
        "set_uri": setUri,
        "set_search_uri": setSearchUri,
        "scryfall_set_uri": scryfallSetUri,
        "rulings_uri": rulingsUri,
        "prints_search_uri": printsSearchUri,
        "collector_number": collectorNumber,
        "digital": digital,
        "rarity": rarity,
        "card_back_id": cardBackId,
        "artist": artist,
        "artist_ids": artistIds == null
            ? []
            : List<dynamic>.from(artistIds!.map((x) => x)),
        "illustration_id": illustrationId,
        "border_color": borderColor,
        "frame": frame,
        "full_art": fullArt,
        "textless": textless,
        "booster": booster,
        "story_spotlight": storySpotlight,
        "edhrec_rank": edhrecRank,
        "prices": prices?.toJson(),
        "related_uris": relatedUris?.toJson(),
        "purchase_uris": purchaseUris?.toJson(),
      };
}

class ImageUris {
  ImageUris({
    this.small,
    this.normal,
    this.large,
    this.png,
    this.artCrop,
    this.borderCrop,
  });

  String? small;
  String? normal;
  String? large;
  String? png;
  String? artCrop;
  String? borderCrop;

  ImageUris copyWith({
    String? small,
    String? normal,
    String? large,
    String? png,
    String? artCrop,
    String? borderCrop,
  }) =>
      ImageUris(
        small: small ?? this.small,
        normal: normal ?? this.normal,
        large: large ?? this.large,
        png: png ?? this.png,
        artCrop: artCrop ?? this.artCrop,
        borderCrop: borderCrop ?? this.borderCrop,
      );

  factory ImageUris.fromRawJson(String str) =>
      ImageUris.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImageUris.fromJson(Map<String, dynamic> json) => ImageUris(
        small: json["small"],
        normal: json["normal"],
        large: json["large"],
        png: json["png"],
        artCrop: json["art_crop"],
        borderCrop: json["border_crop"],
      );

  Map<String, dynamic> toJson() => {
        "small": small,
        "normal": normal,
        "large": large,
        "png": png,
        "art_crop": artCrop,
        "border_crop": borderCrop,
      };
}

class Legalities {
  Legalities({
    this.standard,
    this.future,
    this.historic,
    this.gladiator,
    this.pioneer,
    this.explorer,
    this.modern,
    this.legacy,
    this.pauper,
    this.vintage,
    this.penny,
    this.commander,
    this.oathbreaker,
    this.brawl,
    this.historicbrawl,
    this.alchemy,
    this.paupercommander,
    this.duel,
    this.oldschool,
    this.premodern,
    this.predh,
  });

  String? standard;
  String? future;
  String? historic;
  String? gladiator;
  String? pioneer;
  String? explorer;
  String? modern;
  String? legacy;
  String? pauper;
  String? vintage;
  String? penny;
  String? commander;
  String? oathbreaker;
  String? brawl;
  String? historicbrawl;
  String? alchemy;
  String? paupercommander;
  String? duel;
  String? oldschool;
  String? premodern;
  String? predh;

  Legalities copyWith({
    String? standard,
    String? future,
    String? historic,
    String? gladiator,
    String? pioneer,
    String? explorer,
    String? modern,
    String? legacy,
    String? pauper,
    String? vintage,
    String? penny,
    String? commander,
    String? oathbreaker,
    String? brawl,
    String? historicbrawl,
    String? alchemy,
    String? paupercommander,
    String? duel,
    String? oldschool,
    String? premodern,
    String? predh,
  }) =>
      Legalities(
        standard: standard ?? this.standard,
        future: future ?? this.future,
        historic: historic ?? this.historic,
        gladiator: gladiator ?? this.gladiator,
        pioneer: pioneer ?? this.pioneer,
        explorer: explorer ?? this.explorer,
        modern: modern ?? this.modern,
        legacy: legacy ?? this.legacy,
        pauper: pauper ?? this.pauper,
        vintage: vintage ?? this.vintage,
        penny: penny ?? this.penny,
        commander: commander ?? this.commander,
        oathbreaker: oathbreaker ?? this.oathbreaker,
        brawl: brawl ?? this.brawl,
        historicbrawl: historicbrawl ?? this.historicbrawl,
        alchemy: alchemy ?? this.alchemy,
        paupercommander: paupercommander ?? this.paupercommander,
        duel: duel ?? this.duel,
        oldschool: oldschool ?? this.oldschool,
        premodern: premodern ?? this.premodern,
        predh: predh ?? this.predh,
      );

  factory Legalities.fromRawJson(String str) =>
      Legalities.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Legalities.fromJson(Map<String, dynamic> json) => Legalities(
        standard: json["standard"],
        future: json["future"],
        historic: json["historic"],
        gladiator: json["gladiator"],
        pioneer: json["pioneer"],
        explorer: json["explorer"],
        modern: json["modern"],
        legacy: json["legacy"],
        pauper: json["pauper"],
        vintage: json["vintage"],
        penny: json["penny"],
        commander: json["commander"],
        oathbreaker: json["oathbreaker"],
        brawl: json["brawl"],
        historicbrawl: json["historicbrawl"],
        alchemy: json["alchemy"],
        paupercommander: json["paupercommander"],
        duel: json["duel"],
        oldschool: json["oldschool"],
        premodern: json["premodern"],
        predh: json["predh"],
      );

  Map<String, dynamic> toJson() => {
        "standard": standard,
        "future": future,
        "historic": historic,
        "gladiator": gladiator,
        "pioneer": pioneer,
        "explorer": explorer,
        "modern": modern,
        "legacy": legacy,
        "pauper": pauper,
        "vintage": vintage,
        "penny": penny,
        "commander": commander,
        "oathbreaker": oathbreaker,
        "brawl": brawl,
        "historicbrawl": historicbrawl,
        "alchemy": alchemy,
        "paupercommander": paupercommander,
        "duel": duel,
        "oldschool": oldschool,
        "premodern": premodern,
        "predh": predh,
      };
}

class CardFaces {
  CardFaces({
    this.object,
    this.name,
    this.manaCost,
    this.typeLine,
    this.oracleText,
    this.artist,
    this.artistID,
    this.illustrationID,
    this.imageUris,
  });

  String? object;
  String? name;
  String? manaCost;
  String? typeLine;
  String? oracleText;
  String? artist;
  String? artistID;
  String? illustrationID;
  Map<String, dynamic>? imageUris;

  CardFaces copyWith({
    String? object,
    String? name,
    String? manaCost,
    String? typeLine,
    String? oracleText,
    String? artist,
    String? artistID,
    String? illustrationID,
    Map<String, dynamic>? imageUris,
  }) =>
      CardFaces(
        object: object ?? this.object,
        name: name ?? this.name,
        manaCost: manaCost ?? this.manaCost,
        typeLine: typeLine ?? this.typeLine,
        oracleText: oracleText ?? this.oracleText,
        artist: artist ?? this.artist,
        artistID: artistID ?? this.artistID,
        illustrationID: illustrationID ?? this.illustrationID,
        imageUris: imageUris ?? this.imageUris,
      );

  factory CardFaces.fromRawJson(String str) =>
      CardFaces.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CardFaces.fromJson(Map<String, dynamic> json) => CardFaces(
        object: json["object"],
        name: json["name"],
        manaCost: json["mana_cost"],
        typeLine: json["type_line"],
        oracleText: json["oracle_text"],
        artist: json["artist"],
        artistID: json["artist_id"],
        illustrationID: json["illustration_id"],
        imageUris: json["image_uris"],
      );

  Map<String, dynamic> toJson() => {
        "object": object,
        "name": name,
        "type_line": manaCost,
        "oracle_text": typeLine,
        "eur_foil": oracleText,
        "artist": artist,
        "artist_id": artistID,
        "illustration_id": illustrationID,
        "image_uris": imageUris,
      };
}

class Prices {
  Prices({
    this.usd,
    this.usdFoil,
    this.usdEtched,
    this.eur,
    this.eurFoil,
    this.tix,
  });

  String? usd;
  dynamic usdFoil;
  dynamic usdEtched;
  String? eur;
  dynamic eurFoil;
  dynamic tix;

  Prices copyWith({
    String? usd,
    dynamic usdFoil,
    dynamic usdEtched,
    String? eur,
    dynamic eurFoil,
    dynamic tix,
  }) =>
      Prices(
        usd: usd ?? this.usd,
        usdFoil: usdFoil ?? this.usdFoil,
        usdEtched: usdEtched ?? this.usdEtched,
        eur: eur ?? this.eur,
        eurFoil: eurFoil ?? this.eurFoil,
        tix: tix ?? this.tix,
      );

  factory Prices.fromRawJson(String str) => Prices.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Prices.fromJson(Map<String, dynamic> json) => Prices(
        usd: json["usd"],
        usdFoil: json["usd_foil"],
        usdEtched: json["usd_etched"],
        eur: json["eur"],
        eurFoil: json["eur_foil"],
        tix: json["tix"],
      );

  Map<String, dynamic> toJson() => {
        "usd": usd,
        "usd_foil": usdFoil,
        "usd_etched": usdEtched,
        "eur": eur,
        "eur_foil": eurFoil,
        "tix": tix,
      };
}

class PurchaseUris {
  PurchaseUris({
    this.tcgplayer,
    this.cardmarket,
    this.cardhoarder,
  });

  String? tcgplayer;
  String? cardmarket;
  String? cardhoarder;

  PurchaseUris copyWith({
    String? tcgplayer,
    String? cardmarket,
    String? cardhoarder,
  }) =>
      PurchaseUris(
        tcgplayer: tcgplayer ?? this.tcgplayer,
        cardmarket: cardmarket ?? this.cardmarket,
        cardhoarder: cardhoarder ?? this.cardhoarder,
      );

  factory PurchaseUris.fromRawJson(String str) =>
      PurchaseUris.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurchaseUris.fromJson(Map<String, dynamic> json) => PurchaseUris(
        tcgplayer: json["tcgplayer"],
        cardmarket: json["cardmarket"],
        cardhoarder: json["cardhoarder"],
      );

  Map<String, dynamic> toJson() => {
        "tcgplayer": tcgplayer,
        "cardmarket": cardmarket,
        "cardhoarder": cardhoarder,
      };
}

class RelatedUris {
  RelatedUris({
    this.gatherer,
    this.tcgplayerInfiniteArticles,
    this.tcgplayerInfiniteDecks,
    this.edhrec,
  });

  String? gatherer;
  String? tcgplayerInfiniteArticles;
  String? tcgplayerInfiniteDecks;
  String? edhrec;

  RelatedUris copyWith({
    String? gatherer,
    String? tcgplayerInfiniteArticles,
    String? tcgplayerInfiniteDecks,
    String? edhrec,
  }) =>
      RelatedUris(
        gatherer: gatherer ?? this.gatherer,
        tcgplayerInfiniteArticles:
            tcgplayerInfiniteArticles ?? this.tcgplayerInfiniteArticles,
        tcgplayerInfiniteDecks:
            tcgplayerInfiniteDecks ?? this.tcgplayerInfiniteDecks,
        edhrec: edhrec ?? this.edhrec,
      );

  factory RelatedUris.fromRawJson(String str) =>
      RelatedUris.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RelatedUris.fromJson(Map<String, dynamic> json) => RelatedUris(
        gatherer: json["gatherer"],
        tcgplayerInfiniteArticles: json["tcgplayer_infinite_articles"],
        tcgplayerInfiniteDecks: json["tcgplayer_infinite_decks"],
        edhrec: json["edhrec"],
      );

  Map<String, dynamic> toJson() => {
        "gatherer": gatherer,
        "tcgplayer_infinite_articles": tcgplayerInfiniteArticles,
        "tcgplayer_infinite_decks": tcgplayerInfiniteDecks,
        "edhrec": edhrec,
      };
}
