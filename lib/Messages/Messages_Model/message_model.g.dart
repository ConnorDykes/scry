// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      id: json['id'] as String? ?? '',
      message: json['message'] as String? ?? '',
      isRead: json['isRead'] as bool? ?? false,
      sendingUserID: json['sendingUserID'] as String? ?? '',
      receivingUserID: json['receivingUserID'] as String? ?? '',
      sendingUsername: json['sendingUsername'] as String? ?? '',
      receivingUsername: json['receivingUsername'] as String? ?? '',
      createDateInMillisecondsSinceEpoch:
          json['createDateInMillisecondsSinceEpoch'] as int? ?? 0,
      card: const CardModelSerializer().fromJson(json['card']),
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'isRead': instance.isRead,
      'sendingUserID': instance.sendingUserID,
      'receivingUserID': instance.receivingUserID,
      'sendingUsername': instance.sendingUsername,
      'receivingUsername': instance.receivingUsername,
      'createDateInMillisecondsSinceEpoch':
          instance.createDateInMillisecondsSinceEpoch,
      'card': _$JsonConverterToJson<dynamic, CardModel>(
          instance.card, const CardModelSerializer().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
