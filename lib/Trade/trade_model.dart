import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Trade/comment_model.dart';
import 'package:scry/card_model.dart';

part 'trade_model.freezed.dart';
part 'trade_model.g.dart';

@freezed
class TradeModel with _$TradeModel {
  const factory TradeModel({
    @Default('') String details,
    @Default('') String userID,
    @Default('') String userName,
    @Default([]) List<CardModel> cards,
    @Default([]) List<CommentModel> comments,
  }) = _TradeModel;

  const TradeModel._();

  /// our user type getter
  factory TradeModel.fromJson(Map<String, Object?> json) =>
      _$TradeModelFromJson(json);

  /// Empty user which represents an unauthenticated user.
  static const empty = TradeModel();
}
