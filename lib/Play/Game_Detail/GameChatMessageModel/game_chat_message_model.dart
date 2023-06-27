import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_chat_message_model.freezed.dart';
part 'game_chat_message_model.g.dart';

@freezed
class GameChatMessageModel with _$GameChatMessageModel {
  /// our user constructor
  const factory GameChatMessageModel({
    @Default('') String message,
    @Default('') String senderID,
    @Default('') String senderName,
    @TimestampSerializer() DateTime? dateAndTime,
  }) = _GameChatMessageModel;

  const GameChatMessageModel._();

  /// our user type getter
  factory GameChatMessageModel.fromJson(Map<String, Object?> json) =>
      _$GameChatMessageModelFromJson(json);

  /// Empty user which represents an unauthenticated user.
  static const empty = GameChatMessageModel();
}

class TimestampSerializer implements JsonConverter<DateTime, dynamic> {
  const TimestampSerializer();

  @override
  DateTime fromJson(dynamic timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}
