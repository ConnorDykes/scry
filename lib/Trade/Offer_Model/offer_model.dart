import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/card_model.dart';

part 'offer_model.freezed.dart';
part 'offer_model.g.dart';

@freezed
class OfferModel with _$OfferModel {
  const factory OfferModel({
    @Default('') String details,
    @Default('') String offeringUserID,
    @Default('') String offeringUserName,
    @Default('') String recipientUserID,
    @Default('') String recipientName,
    @Default([]) List<CardModel> cards,
  }) = _OfferModel;

  const OfferModel._();

  /// our user type getter
  factory OfferModel.fromJson(Map<String, Object?> json) =>
      _$OfferModelFromJson(json);

  /// Empty user which represents an unauthenticated user.
  static const empty = OfferModel();
}
