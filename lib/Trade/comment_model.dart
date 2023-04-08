import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Trade/trade_model.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    @Default(UserModel.empty) UserModel user,
    @Default(TradeModel.empty) TradeModel trade,
    @Default('') String comment,
  }) = _CommentModel;

  const CommentModel._();

  /// our user type getter
  factory CommentModel.fromJson(Map<String, Object?> json) =>
      _$CommentModelFromJson(json);

  /// Empty user which represents an unauthenticated user.
  static const empty = CommentModel();
}
