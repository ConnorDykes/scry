import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Play/Game_Model/game_types.dart';

part 'game_model.freezed.dart';
part 'game_model.g.dart';

/// The Game Model represents a game a user is trying to find players for
@freezed
class GameModel with _$GameModel {
  /// our user constructor
  const factory GameModel({
    @Default('') String title,
    @Default('') String description,
    @Default(0.00) double cost,
    @Default('') String location,
    @Default(null) DateTime? day,
    @Default(null) DateTime? time,
    @Default(4) int maxPlayerCount,
    @Default(2) int minPlayerCount,
    @Default([]) List<UserModel> players,
    @Default(GameFormats.Commander) GameFormats format,
  }) = _GameModel;

  const GameModel._();

  /// our user type getter
  factory GameModel.fromJson(Map<String, Object?> json) =>
      _$GameModelFromJson(json);

  /// Empty user which represents an unauthenticated user.
  static const empty = GameModel();
}
