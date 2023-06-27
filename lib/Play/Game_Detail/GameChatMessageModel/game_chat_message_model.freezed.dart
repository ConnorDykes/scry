// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameChatMessageModel _$GameChatMessageModelFromJson(Map<String, dynamic> json) {
  return _GameChatMessageModel.fromJson(json);
}

/// @nodoc
mixin _$GameChatMessageModel {
  String get message => throw _privateConstructorUsedError;
  String get senderID => throw _privateConstructorUsedError;
  String get senderName => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get dateAndTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameChatMessageModelCopyWith<GameChatMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameChatMessageModelCopyWith<$Res> {
  factory $GameChatMessageModelCopyWith(GameChatMessageModel value,
          $Res Function(GameChatMessageModel) then) =
      _$GameChatMessageModelCopyWithImpl<$Res, GameChatMessageModel>;
  @useResult
  $Res call(
      {String message,
      String senderID,
      String senderName,
      @TimestampSerializer() DateTime? dateAndTime});
}

/// @nodoc
class _$GameChatMessageModelCopyWithImpl<$Res,
        $Val extends GameChatMessageModel>
    implements $GameChatMessageModelCopyWith<$Res> {
  _$GameChatMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? senderID = null,
    Object? senderName = null,
    Object? dateAndTime = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      senderID: null == senderID
          ? _value.senderID
          : senderID // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameChatMessageModelCopyWith<$Res>
    implements $GameChatMessageModelCopyWith<$Res> {
  factory _$$_GameChatMessageModelCopyWith(_$_GameChatMessageModel value,
          $Res Function(_$_GameChatMessageModel) then) =
      __$$_GameChatMessageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      String senderID,
      String senderName,
      @TimestampSerializer() DateTime? dateAndTime});
}

/// @nodoc
class __$$_GameChatMessageModelCopyWithImpl<$Res>
    extends _$GameChatMessageModelCopyWithImpl<$Res, _$_GameChatMessageModel>
    implements _$$_GameChatMessageModelCopyWith<$Res> {
  __$$_GameChatMessageModelCopyWithImpl(_$_GameChatMessageModel _value,
      $Res Function(_$_GameChatMessageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? senderID = null,
    Object? senderName = null,
    Object? dateAndTime = freezed,
  }) {
    return _then(_$_GameChatMessageModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      senderID: null == senderID
          ? _value.senderID
          : senderID // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      dateAndTime: freezed == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameChatMessageModel extends _GameChatMessageModel {
  const _$_GameChatMessageModel(
      {this.message = '',
      this.senderID = '',
      this.senderName = '',
      @TimestampSerializer() this.dateAndTime})
      : super._();

  factory _$_GameChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_GameChatMessageModelFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String senderID;
  @override
  @JsonKey()
  final String senderName;
  @override
  @TimestampSerializer()
  final DateTime? dateAndTime;

  @override
  String toString() {
    return 'GameChatMessageModel(message: $message, senderID: $senderID, senderName: $senderName, dateAndTime: $dateAndTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameChatMessageModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.senderID, senderID) ||
                other.senderID == senderID) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.dateAndTime, dateAndTime) ||
                other.dateAndTime == dateAndTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, senderID, senderName, dateAndTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameChatMessageModelCopyWith<_$_GameChatMessageModel> get copyWith =>
      __$$_GameChatMessageModelCopyWithImpl<_$_GameChatMessageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameChatMessageModelToJson(
      this,
    );
  }
}

abstract class _GameChatMessageModel extends GameChatMessageModel {
  const factory _GameChatMessageModel(
          {final String message,
          final String senderID,
          final String senderName,
          @TimestampSerializer() final DateTime? dateAndTime}) =
      _$_GameChatMessageModel;
  const _GameChatMessageModel._() : super._();

  factory _GameChatMessageModel.fromJson(Map<String, dynamic> json) =
      _$_GameChatMessageModel.fromJson;

  @override
  String get message;
  @override
  String get senderID;
  @override
  String get senderName;
  @override
  @TimestampSerializer()
  DateTime? get dateAndTime;
  @override
  @JsonKey(ignore: true)
  _$$_GameChatMessageModelCopyWith<_$_GameChatMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
