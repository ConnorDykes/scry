// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameChatMessageModel _$$_GameChatMessageModelFromJson(
        Map<String, dynamic> json) =>
    _$_GameChatMessageModel(
      message: json['message'] as String? ?? '',
      senderID: json['senderID'] as String? ?? '',
      senderName: json['senderName'] as String? ?? '',
      dateAndTime: const TimestampSerializer().fromJson(json['dateAndTime']),
    );

Map<String, dynamic> _$$_GameChatMessageModelToJson(
        _$_GameChatMessageModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'senderID': instance.senderID,
      'senderName': instance.senderName,
      'dateAndTime': _$JsonConverterToJson<dynamic, DateTime>(
          instance.dateAndTime, const TimestampSerializer().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
