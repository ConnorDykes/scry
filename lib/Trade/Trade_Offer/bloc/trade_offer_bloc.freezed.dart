// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_offer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TradeOfferEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeOfferEventCopyWith<$Res> {
  factory $TradeOfferEventCopyWith(
          TradeOfferEvent value, $Res Function(TradeOfferEvent) then) =
      _$TradeOfferEventCopyWithImpl<$Res, TradeOfferEvent>;
}

/// @nodoc
class _$TradeOfferEventCopyWithImpl<$Res, $Val extends TradeOfferEvent>
    implements $TradeOfferEventCopyWith<$Res> {
  _$TradeOfferEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$TradeOfferEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TradeOfferEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TradeOfferEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$TradeOfferState {
  OfferModel get offer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TradeOfferStateCopyWith<TradeOfferState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeOfferStateCopyWith<$Res> {
  factory $TradeOfferStateCopyWith(
          TradeOfferState value, $Res Function(TradeOfferState) then) =
      _$TradeOfferStateCopyWithImpl<$Res, TradeOfferState>;
  @useResult
  $Res call({OfferModel offer});

  $OfferModelCopyWith<$Res> get offer;
}

/// @nodoc
class _$TradeOfferStateCopyWithImpl<$Res, $Val extends TradeOfferState>
    implements $TradeOfferStateCopyWith<$Res> {
  _$TradeOfferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offer = null,
  }) {
    return _then(_value.copyWith(
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as OfferModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferModelCopyWith<$Res> get offer {
    return $OfferModelCopyWith<$Res>(_value.offer, (value) {
      return _then(_value.copyWith(offer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TradeOfferStateCopyWith<$Res>
    implements $TradeOfferStateCopyWith<$Res> {
  factory _$$_TradeOfferStateCopyWith(
          _$_TradeOfferState value, $Res Function(_$_TradeOfferState) then) =
      __$$_TradeOfferStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OfferModel offer});

  @override
  $OfferModelCopyWith<$Res> get offer;
}

/// @nodoc
class __$$_TradeOfferStateCopyWithImpl<$Res>
    extends _$TradeOfferStateCopyWithImpl<$Res, _$_TradeOfferState>
    implements _$$_TradeOfferStateCopyWith<$Res> {
  __$$_TradeOfferStateCopyWithImpl(
      _$_TradeOfferState _value, $Res Function(_$_TradeOfferState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offer = null,
  }) {
    return _then(_$_TradeOfferState(
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as OfferModel,
    ));
  }
}

/// @nodoc

class _$_TradeOfferState extends _TradeOfferState {
  const _$_TradeOfferState({this.offer = OfferModel.empty}) : super._();

  @override
  @JsonKey()
  final OfferModel offer;

  @override
  String toString() {
    return 'TradeOfferState(offer: $offer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TradeOfferState &&
            (identical(other.offer, offer) || other.offer == offer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TradeOfferStateCopyWith<_$_TradeOfferState> get copyWith =>
      __$$_TradeOfferStateCopyWithImpl<_$_TradeOfferState>(this, _$identity);
}

abstract class _TradeOfferState extends TradeOfferState {
  const factory _TradeOfferState({final OfferModel offer}) = _$_TradeOfferState;
  const _TradeOfferState._() : super._();

  @override
  OfferModel get offer;
  @override
  @JsonKey(ignore: true)
  _$$_TradeOfferStateCopyWith<_$_TradeOfferState> get copyWith =>
      throw _privateConstructorUsedError;
}
