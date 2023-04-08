// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentModel _$$_CommentModelFromJson(Map<String, dynamic> json) =>
    _$_CommentModel(
      user: json['user'] == null
          ? UserModel.empty
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      trade: json['trade'] == null
          ? TradeModel.empty
          : TradeModel.fromJson(json['trade'] as Map<String, dynamic>),
      comment: json['comment'] as String? ?? '',
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'trade': instance.trade,
      'comment': instance.comment,
    };
