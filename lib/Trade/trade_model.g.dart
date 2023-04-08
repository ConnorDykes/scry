// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TradeModel _$$_TradeModelFromJson(Map<String, dynamic> json) =>
    _$_TradeModel(
      details: json['details'] as String? ?? '',
      user: json['user'] == null
          ? UserModel.empty
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      card: json['card'] == null
          ? const CardModel.empty()
          : CardModel.fromJson(json['card'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TradeModelToJson(_$_TradeModel instance) =>
    <String, dynamic>{
      'details': instance.details,
      'user': instance.user,
      'card': instance.card,
      'comments': instance.comments,
    };
