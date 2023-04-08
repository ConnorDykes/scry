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

TradeModel _$TradeModelFromJson(Map<String, dynamic> json) {
  return _TradeModel.fromJson(json);
}

/// @nodoc
mixin _$TradeModel {
  String get details => throw _privateConstructorUsedError;
  String get userID => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  List<CardModel> get cards => throw _privateConstructorUsedError;
  List<CommentModel> get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradeModelCopyWith<TradeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeModelCopyWith<$Res> {
  factory $TradeModelCopyWith(
          TradeModel value, $Res Function(TradeModel) then) =
      _$TradeModelCopyWithImpl<$Res, TradeModel>;
  @useResult
  $Res call(
      {String details,
      String userID,
      String userName,
      List<CardModel> cards,
      List<CommentModel> comments});
}

/// @nodoc
class _$TradeModelCopyWithImpl<$Res, $Val extends TradeModel>
    implements $TradeModelCopyWith<$Res> {
  _$TradeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? userID = null,
    Object? userName = null,
    Object? cards = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
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
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TradeModelCopyWith<$Res>
    implements $TradeModelCopyWith<$Res> {
  factory _$$_TradeModelCopyWith(
          _$_TradeModel value, $Res Function(_$_TradeModel) then) =
      __$$_TradeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String details,
      String userID,
      String userName,
      List<CardModel> cards,
      List<CommentModel> comments});
}

/// @nodoc
class __$$_TradeModelCopyWithImpl<$Res>
    extends _$TradeModelCopyWithImpl<$Res, _$_TradeModel>
    implements _$$_TradeModelCopyWith<$Res> {
  __$$_TradeModelCopyWithImpl(
      _$_TradeModel _value, $Res Function(_$_TradeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? userID = null,
    Object? userName = null,
    Object? cards = null,
    Object? comments = null,
  }) {
    return _then(_$_TradeModel(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
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
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TradeModel extends _TradeModel {
  const _$_TradeModel(
      {this.details = '',
      this.userID = '',
      this.userName = '',
      final List<CardModel> cards = const [],
      final List<CommentModel> comments = const []})
      : _cards = cards,
        _comments = comments,
        super._();

  factory _$_TradeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TradeModelFromJson(json);

  @override
  @JsonKey()
  final String details;
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

  final List<CommentModel> _comments;
  @override
  @JsonKey()
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'TradeModel(details: $details, userID: $userID, userName: $userName, cards: $cards, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TradeModel &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      details,
      userID,
      userName,
      const DeepCollectionEquality().hash(_cards),
      const DeepCollectionEquality().hash(_comments));

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

abstract class _TradeModel extends TradeModel {
  const factory _TradeModel(
      {final String details,
      final String userID,
      final String userName,
      final List<CardModel> cards,
      final List<CommentModel> comments}) = _$_TradeModel;
  const _TradeModel._() : super._();

  factory _TradeModel.fromJson(Map<String, dynamic> json) =
      _$_TradeModel.fromJson;

  @override
  String get details;
  @override
  String get userID;
  @override
  String get userName;
  @override
  List<CardModel> get cards;
  @override
  List<CommentModel> get comments;
  @override
  @JsonKey(ignore: true)
  _$$_TradeModelCopyWith<_$_TradeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
