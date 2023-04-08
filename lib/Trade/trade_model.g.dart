// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TradeModel _$$_TradeModelFromJson(Map<String, dynamic> json) =>
    _$_TradeModel(
      details: json['details'] as String? ?? '',
      userID: json['userID'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      cards: (json['cards'] as List<dynamic>?)
              ?.map((e) => CardModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TradeModelToJson(_$_TradeModel instance) =>
    <String, dynamic>{
      'details': instance.details,
      'userID': instance.userID,
      'userName': instance.userName,
      'cards': instance.cards,
      'comments': instance.comments,
    };
