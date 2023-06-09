import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';
import 'package:scry/card_model.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel({
    @Default('') String id,
    @Default(OfferModel.empty) OfferModel offer,
    @CardModelSerializer() CardModel? card,
    @Default([]) List<String> users,
  }) = _ChatModel;

  const ChatModel._();

  /// our user type getter
  factory ChatModel.fromJson(Map<String, Object?> json) =>
      _$ChatModelFromJson(json);

  /// Empty user which represents an unauthenticated user.
  static const empty = ChatModel();
}

class CardModelSerializer implements JsonConverter<CardModel, dynamic> {
  const CardModelSerializer();

  @override
  CardModel fromJson(dynamic json) =>
      CardModel.fromJson(json ?? CardModel.empty().toJson());

  @override
  Map<String, dynamic> toJson(CardModel card) => card.toJson();
}
