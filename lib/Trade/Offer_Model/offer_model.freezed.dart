// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) {
  return _OfferModel.fromJson(json);
}

/// @nodoc
mixin _$OfferModel {
  String get details => throw _privateConstructorUsedError;
  String get offeringUserID => throw _privateConstructorUsedError;
  String get offeringUserName => throw _privateConstructorUsedError;
  String get recipientUserID => throw _privateConstructorUsedError;
  String get recipientName => throw _privateConstructorUsedError;
  List<CardModel> get cards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferModelCopyWith<OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferModelCopyWith<$Res> {
  factory $OfferModelCopyWith(
          OfferModel value, $Res Function(OfferModel) then) =
      _$OfferModelCopyWithImpl<$Res, OfferModel>;
  @useResult
  $Res call(
      {String details,
      String offeringUserID,
      String offeringUserName,
      String recipientUserID,
      String recipientName,
      List<CardModel> cards});
}

/// @nodoc
class _$OfferModelCopyWithImpl<$Res, $Val extends OfferModel>
    implements $OfferModelCopyWith<$Res> {
  _$OfferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? offeringUserID = null,
    Object? offeringUserName = null,
    Object? recipientUserID = null,
    Object? recipientName = null,
    Object? cards = null,
  }) {
    return _then(_value.copyWith(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      offeringUserID: null == offeringUserID
          ? _value.offeringUserID
          : offeringUserID // ignore: cast_nullable_to_non_nullable
              as String,
      offeringUserName: null == offeringUserName
          ? _value.offeringUserName
          : offeringUserName // ignore: cast_nullable_to_non_nullable
              as String,
      recipientUserID: null == recipientUserID
          ? _value.recipientUserID
          : recipientUserID // ignore: cast_nullable_to_non_nullable
              as String,
      recipientName: null == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferModelCopyWith<$Res>
    implements $OfferModelCopyWith<$Res> {
  factory _$$_OfferModelCopyWith(
          _$_OfferModel value, $Res Function(_$_OfferModel) then) =
      __$$_OfferModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String details,
      String offeringUserID,
      String offeringUserName,
      String recipientUserID,
      String recipientName,
      List<CardModel> cards});
}

/// @nodoc
class __$$_OfferModelCopyWithImpl<$Res>
    extends _$OfferModelCopyWithImpl<$Res, _$_OfferModel>
    implements _$$_OfferModelCopyWith<$Res> {
  __$$_OfferModelCopyWithImpl(
      _$_OfferModel _value, $Res Function(_$_OfferModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? offeringUserID = null,
    Object? offeringUserName = null,
    Object? recipientUserID = null,
    Object? recipientName = null,
    Object? cards = null,
  }) {
    return _then(_$_OfferModel(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      offeringUserID: null == offeringUserID
          ? _value.offeringUserID
          : offeringUserID // ignore: cast_nullable_to_non_nullable
              as String,
      offeringUserName: null == offeringUserName
          ? _value.offeringUserName
          : offeringUserName // ignore: cast_nullable_to_non_nullable
              as String,
      recipientUserID: null == recipientUserID
          ? _value.recipientUserID
          : recipientUserID // ignore: cast_nullable_to_non_nullable
              as String,
      recipientName: null == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferModel extends _OfferModel {
  const _$_OfferModel(
      {this.details = '',
      this.offeringUserID = '',
      this.offeringUserName = '',
      this.recipientUserID = '',
      this.recipientName = '',
      final List<CardModel> cards = const []})
      : _cards = cards,
        super._();

  factory _$_OfferModel.fromJson(Map<String, dynamic> json) =>
      _$$_OfferModelFromJson(json);

  @override
  @JsonKey()
  final String details;
  @override
  @JsonKey()
  final String offeringUserID;
  @override
  @JsonKey()
  final String offeringUserName;
  @override
  @JsonKey()
  final String recipientUserID;
  @override
  @JsonKey()
  final String recipientName;
  final List<CardModel> _cards;
  @override
  @JsonKey()
  List<CardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'OfferModel(details: $details, offeringUserID: $offeringUserID, offeringUserName: $offeringUserName, recipientUserID: $recipientUserID, recipientName: $recipientName, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferModel &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.offeringUserID, offeringUserID) ||
                other.offeringUserID == offeringUserID) &&
            (identical(other.offeringUserName, offeringUserName) ||
                other.offeringUserName == offeringUserName) &&
            (identical(other.recipientUserID, recipientUserID) ||
                other.recipientUserID == recipientUserID) &&
            (identical(other.recipientName, recipientName) ||
                other.recipientName == recipientName) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      details,
      offeringUserID,
      offeringUserName,
      recipientUserID,
      recipientName,
      const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferModelCopyWith<_$_OfferModel> get copyWith =>
      __$$_OfferModelCopyWithImpl<_$_OfferModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferModelToJson(
      this,
    );
  }
}

abstract class _OfferModel extends OfferModel {
  const factory _OfferModel(
      {final String details,
      final String offeringUserID,
      final String offeringUserName,
      final String recipientUserID,
      final String recipientName,
      final List<CardModel> cards}) = _$_OfferModel;
  const _OfferModel._() : super._();

  factory _OfferModel.fromJson(Map<String, dynamic> json) =
      _$_OfferModel.fromJson;

  @override
  String get details;
  @override
  String get offeringUserID;
  @override
  String get offeringUserName;
  @override
  String get recipientUserID;
  @override
  String get recipientName;
  @override
  List<CardModel> get cards;
  @override
  @JsonKey(ignore: true)
  _$$_OfferModelCopyWith<_$_OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}
