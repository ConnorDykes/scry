import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    @Default(null) UserModel? creator,
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    @Default(0) int cost,
    @Default('') String location,
    @TimestampSerializer() DateTime? dateAndTime,
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

class TimestampSerializer implements JsonConverter<DateTime, dynamic> {
  const TimestampSerializer();

  @override
  DateTime fromJson(dynamic timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}
