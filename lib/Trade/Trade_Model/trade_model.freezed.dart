// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TradePostModel _$TradePostModelFromJson(Map<String, dynamic> json) {
  return _TradeModel.fromJson(json);
}

/// @nodoc
mixin _$TradePostModel {
  String get details => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get userID => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  List<CardModel> get cards => throw _privateConstructorUsedError;
  dynamic get lookingFor => throw _privateConstructorUsedError;
  dynamic get willingToTrade => throw _privateConstructorUsedError;
  int get createDateInMillisecondsSinceEpoch =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradePostModelCopyWith<TradePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradePostModelCopyWith<$Res> {
  factory $TradePostModelCopyWith(
          TradePostModel value, $Res Function(TradePostModel) then) =
      _$TradePostModelCopyWithImpl<$Res, TradePostModel>;
  @useResult
  $Res call(
      {String details,
      String id,
      String userID,
      String userName,
      List<CardModel> cards,
      dynamic lookingFor,
      dynamic willingToTrade,
      int createDateInMillisecondsSinceEpoch});
}

/// @nodoc
class _$TradePostModelCopyWithImpl<$Res, $Val extends TradePostModel>
    implements $TradePostModelCopyWith<$Res> {
  _$TradePostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? id = null,
    Object? userID = null,
    Object? userName = null,
    Object? cards = null,
    Object? lookingFor = freezed,
    Object? willingToTrade = freezed,
    Object? createDateInMillisecondsSinceEpoch = null,
  }) {
    return _then(_value.copyWith(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      lookingFor: freezed == lookingFor
          ? _value.lookingFor
          : lookingFor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      willingToTrade: freezed == willingToTrade
          ? _value.willingToTrade
          : willingToTrade // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createDateInMillisecondsSinceEpoch: null ==
              createDateInMillisecondsSinceEpoch
          ? _value.createDateInMillisecondsSinceEpoch
          : createDateInMillisecondsSinceEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TradeModelCopyWith<$Res>
    implements $TradePostModelCopyWith<$Res> {
  factory _$$_TradeModelCopyWith(
          _$_TradeModel value, $Res Function(_$_TradeModel) then) =
      __$$_TradeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String details,
      String id,
      String userID,
      String userName,
      List<CardModel> cards,
      dynamic lookingFor,
      dynamic willingToTrade,
      int createDateInMillisecondsSinceEpoch});
}

/// @nodoc
class __$$_TradeModelCopyWithImpl<$Res>
    extends _$TradePostModelCopyWithImpl<$Res, _$_TradeModel>
    implements _$$_TradeModelCopyWith<$Res> {
  __$$_TradeModelCopyWithImpl(
      _$_TradeModel _value, $Res Function(_$_TradeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? id = null,
    Object? userID = null,
    Object? userName = null,
    Object? cards = null,
    Object? lookingFor = freezed,
    Object? willingToTrade = freezed,
    Object? createDateInMillisecondsSinceEpoch = null,
  }) {
    return _then(_$_TradeModel(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      lookingFor: freezed == lookingFor ? _value.lookingFor! : lookingFor,
      willingToTrade:
          freezed == willingToTrade ? _value.willingToTrade! : willingToTrade,
      createDateInMillisecondsSinceEpoch: null ==
              createDateInMillisecondsSinceEpoch
          ? _value.createDateInMillisecondsSinceEpoch
          : createDateInMillisecondsSinceEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TradeModel extends _TradeModel {
  const _$_TradeModel(
      {this.details = '',
      this.id = '',
      this.userID = '',
      this.userName = '',
      final List<CardModel> cards = const [],
      this.lookingFor = true,
      this.willingToTrade = false,
      this.createDateInMillisecondsSinceEpoch = 0})
      : _cards = cards,
        super._();

  factory _$_TradeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TradeModelFromJson(json);

  @override
  @JsonKey()
  final String details;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String userID;
  @override
  @JsonKey()
  final String userName;
  final List<CardModel> _cards;
  @override
  @JsonKey()
  List<CardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  @JsonKey()
  final dynamic lookingFor;
  @override
  @JsonKey()
  final dynamic willingToTrade;
  @override
  @JsonKey()
  final int createDateInMillisecondsSinceEpoch;

  @override
  String toString() {
    return 'TradePostModel(details: $details, id: $id, userID: $userID, userName: $userName, cards: $cards, lookingFor: $lookingFor, willingToTrade: $willingToTrade, createDateInMillisecondsSinceEpoch: $createDateInMillisecondsSinceEpoch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TradeModel &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            const DeepCollectionEquality()
                .equals(other.lookingFor, lookingFor) &&
            const DeepCollectionEquality()
                .equals(other.willingToTrade, willingToTrade) &&
            (identical(other.createDateInMillisecondsSinceEpoch,
                    createDateInMillisecondsSinceEpoch) ||
                other.createDateInMillisecondsSinceEpoch ==
                    createDateInMillisecondsSinceEpoch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      details,
      id,
      userID,
      userName,
      const DeepCollectionEquality().hash(_cards),
      const DeepCollectionEquality().hash(lookingFor),
      const DeepCollectionEquality().hash(willingToTrade),
      createDateInMillisecondsSinceEpoch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TradeModelCopyWith<_$_TradeModel> get copyWith =>
      __$$_TradeModelCopyWithImpl<_$_TradeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TradeModelToJson(
      this,
    );
  }
}

abstract class _TradeModel extends TradePostModel {
  const factory _TradeModel(
      {final String details,
      final String id,
      final String userID,
      final String userName,
      final List<CardModel> cards,
      final dynamic lookingFor,
      final dynamic willingToTrade,
      final int createDateInMillisecondsSinceEpoch}) = _$_TradeModel;
  const _TradeModel._() : super._();

  factory _TradeModel.fromJson(Map<String, dynamic> json) =
      _$_TradeModel.fromJson;

  @override
  String get details;
  @override
  String get id;
  @override
  String get userID;
  @override
  String get userName;
  @override
  List<CardModel> get cards;
  @override
  dynamic get lookingFor;
  @override
  dynamic get willingToTrade;
  @override
  int get createDateInMillisecondsSinceEpoch;
  @override
  @JsonKey(ignore: true)
  _$$_TradeModelCopyWith<_$_TradeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
