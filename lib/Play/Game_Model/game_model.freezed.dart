// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameModel _$GameModelFromJson(Map<String, dynamic> json) {
  return _GameModel.fromJson(json);
}

/// @nodoc
mixin _$GameModel {
  UserModel? get creator => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get dateAndTime => throw _privateConstructorUsedError;
  int get maxPlayerCount => throw _privateConstructorUsedError;
  int get minPlayerCount => throw _privateConstructorUsedError;
  List<UserModel> get players => throw _privateConstructorUsedError;
  GameFormats get format => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameModelCopyWith<GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModelCopyWith<$Res> {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) then) =
      _$GameModelCopyWithImpl<$Res, GameModel>;
  @useResult
  $Res call(
      {UserModel? creator,
      String title,
      String description,
      int cost,
      String location,
      @TimestampSerializer() DateTime? dateAndTime,
      int maxPlayerCount,
      int minPlayerCount,
      List<UserModel> players,
      GameFormats format});

  $UserModelCopyWith<$Res>? get creator;
}

/// @nodoc
class _$GameModelCopyWithImpl<$Res, $Val extends GameModel>
    implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creator = freezed,
    Object? title = null,
    Object? description = null,
    Object? cost = null,
    Object? location = null,
    Object? dateAndTime = freezed,
    Object? maxPlayerCount = null,
    Object? minPlayerCount = null,
    Object? players = null,
    Object? format = null,
  }) {
    return _then(_value.copyWith(
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxPlayerCount: null == maxPlayerCount
          ? _value.maxPlayerCount
          : maxPlayerCount // ignore: cast_nullable_to_non_nullable
              as int,
      minPlayerCount: null == minPlayerCount
          ? _value.minPlayerCount
          : minPlayerCount // ignore: cast_nullable_to_non_nullable
              as int,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as GameFormats,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GameModelCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$$_GameModelCopyWith(
          _$_GameModel value, $Res Function(_$_GameModel) then) =
      __$$_GameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel? creator,
      String title,
      String description,
      int cost,
      String location,
      @TimestampSerializer() DateTime? dateAndTime,
      int maxPlayerCount,
      int minPlayerCount,
      List<UserModel> players,
      GameFormats format});

  @override
  $UserModelCopyWith<$Res>? get creator;
}

/// @nodoc
class __$$_GameModelCopyWithImpl<$Res>
    extends _$GameModelCopyWithImpl<$Res, _$_GameModel>
    implements _$$_GameModelCopyWith<$Res> {
  __$$_GameModelCopyWithImpl(
      _$_GameModel _value, $Res Function(_$_GameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creator = freezed,
    Object? title = null,
    Object? description = null,
    Object? cost = null,
    Object? location = null,
    Object? dateAndTime = freezed,
    Object? maxPlayerCount = null,
    Object? minPlayerCount = null,
    Object? players = null,
    Object? format = null,
  }) {
    return _then(_$_GameModel(
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxPlayerCount: null == maxPlayerCount
          ? _value.maxPlayerCount
          : maxPlayerCount // ignore: cast_nullable_to_non_nullable
              as int,
      minPlayerCount: null == minPlayerCount
          ? _value.minPlayerCount
          : minPlayerCount // ignore: cast_nullable_to_non_nullable
              as int,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as GameFormats,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameModel extends _GameModel {
  const _$_GameModel(
      {this.creator = null,
      this.title = '',
      this.description = '',
      this.cost = 0,
      this.location = '',
      @TimestampSerializer() this.dateAndTime,
      this.maxPlayerCount = 4,
      this.minPlayerCount = 2,
      final List<UserModel> players = const [],
      this.format = GameFormats.Commander})
      : _players = players,
        super._();

  factory _$_GameModel.fromJson(Map<String, dynamic> json) =>
      _$$_GameModelFromJson(json);

  @override
  @JsonKey()
  final UserModel? creator;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int cost;
  @override
  @JsonKey()
  final String location;
  @override
  @TimestampSerializer()
  final DateTime? dateAndTime;
  @override
  @JsonKey()
  final int maxPlayerCount;
  @override
  @JsonKey()
  final int minPlayerCount;
  final List<UserModel> _players;
  @override
  @JsonKey()
  List<UserModel> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  @JsonKey()
  final GameFormats format;

  @override
  String toString() {
    return 'GameModel(creator: $creator, title: $title, description: $description, cost: $cost, location: $location, dateAndTime: $dateAndTime, maxPlayerCount: $maxPlayerCount, minPlayerCount: $minPlayerCount, players: $players, format: $format)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameModel &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.dateAndTime, dateAndTime) ||
                other.dateAndTime == dateAndTime) &&
            (identical(other.maxPlayerCount, maxPlayerCount) ||
                other.maxPlayerCount == maxPlayerCount) &&
            (identical(other.minPlayerCount, minPlayerCount) ||
                other.minPlayerCount == minPlayerCount) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.format, format) || other.format == format));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      creator,
      title,
      description,
      cost,
      location,
      dateAndTime,
      maxPlayerCount,
      minPlayerCount,
      const DeepCollectionEquality().hash(_players),
      format);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
      __$$_GameModelCopyWithImpl<_$_GameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameModelToJson(
      this,
    );
  }
}

abstract class _GameModel extends GameModel {
  const factory _GameModel(
      {final UserModel? creator,
      final String title,
      final String description,
      final int cost,
      final String location,
      @TimestampSerializer() final DateTime? dateAndTime,
      final int maxPlayerCount,
      final int minPlayerCount,
      final List<UserModel> players,
      final GameFormats format}) = _$_GameModel;
  const _GameModel._() : super._();

  factory _GameModel.fromJson(Map<String, dynamic> json) =
      _$_GameModel.fromJson;

  @override
  UserModel? get creator;
  @override
  String get title;
  @override
  String get description;
  @override
  int get cost;
  @override
  String get location;
  @override
  @TimestampSerializer()
  DateTime? get dateAndTime;
  @override
  int get maxPlayerCount;
  @override
  int get minPlayerCount;
  @override
  List<UserModel> get players;
  @override
  GameFormats get format;
  @override
  @JsonKey(ignore: true)
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}
