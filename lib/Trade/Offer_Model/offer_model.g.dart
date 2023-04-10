// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferModel _$$_OfferModelFromJson(Map<String, dynamic> json) =>
    _$_OfferModel(
      details: json['details'] as String? ?? '',
      userID: json['userID'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      cards: (json['cards'] as List<dynamic>?)
              ?.map((e) => CardModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OfferModelToJson(_$_OfferModel instance) =>
    <String, dynamic>{
      'details': instance.details,
      'userID': instance.userID,
      'userName': instance.userName,
      'cards': instance.cards,
    };
