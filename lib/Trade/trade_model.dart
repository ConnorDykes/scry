import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/card_model.dart';

part 'trade_model.freezed.dart';
part 'trade_model.g.dart';

@freezed
class TradePostModel with _$TradePostModel {
  const factory TradePostModel({
    @Default('') String details,
    @Default('') String userID,
    @Default('') String userName,
    @Default([]) List<CardModel> cards,
  }) = _TradeModel;

  const TradePostModel._();

  /// our user type getter
  factory TradePostModel.fromJson(Map<String, Object?> json) =>
      _$TradePostModelFromJson(json);

  /// Empty user which represents an unauthenticated user.
  static const empty = TradePostModel();
}
