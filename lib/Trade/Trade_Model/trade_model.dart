import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/card_model.dart';

part 'trade_model.freezed.dart';
part 'trade_model.g.dart';

@freezed
class TradePostModel with _$TradePostModel {
  const factory TradePostModel({
    @Default('') String details,
    @Default('') String id,
    @Default('') String userID,
    @Default('') String userName,
    @Default([]) List<CardModel> cards,
    @Default(true) lookingFor,
    @Default(false) willingToTrade,
    @Default(0) int createDateInMillisecondsSinceEpoch,
  }) = _TradeModel;

  const TradePostModel._();

  factory TradePostModel.fromJson(Map<String, Object?> json) =>
      _$TradePostModelFromJson(json);

  /// Empty trade
  static const empty = TradePostModel();
}
