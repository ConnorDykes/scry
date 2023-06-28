import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Messages/Chat_Model/chat_model.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';
import 'package:scry/card_model.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    @Default('') String id,
    @Default('') String message,
    @Default(false) bool isRead,
    @Default('') String sendingUserID,
    @Default('') String receivingUserID,
    @Default('') String sendingUsername,
    @Default('') String receivingUsername,
    @Default(0) int createDateInMillisecondsSinceEpoch,
    @CardModelSerializer() CardModel? card,
  }) = _MessageModel;

  const MessageModel._();

  /// our user type getter
  factory MessageModel.fromJson(Map<String, Object?> json) =>
      _$MessageModelFromJson(json);

  /// Empty user which represents an unauthenticated user.
  static const empty = MessageModel();
}
