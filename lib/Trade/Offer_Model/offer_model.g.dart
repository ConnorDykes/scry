// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferModel _$$_OfferModelFromJson(Map<String, dynamic> json) =>
    _$_OfferModel(
      details: json['details'] as String? ?? '',
      offeringUserID: json['offeringUserID'] as String? ?? '',
      offeringUserName: json['offeringUserName'] as String? ?? '',
      recipientUserID: json['recipientUserID'] as String? ?? '',
      recipientName: json['recipientName'] as String? ?? '',
      cards: (json['cards'] as List<dynamic>?)
              ?.map((e) => CardModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OfferModelToJson(_$_OfferModel instance) =>
    <String, dynamic>{
      'details': instance.details,
      'offeringUserID': instance.offeringUserID,
      'offeringUserName': instance.offeringUserName,
      'recipientUserID': instance.recipientUserID,
      'recipientName': instance.recipientName,
      'cards': instance.cards,
    };
