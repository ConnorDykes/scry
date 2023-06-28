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
    required TResult Function(BuildContext context) reject,
    required TResult Function(BuildContext context) accept,
    required TResult Function(BuildContext context) removeOffer,
    required TResult Function(String value) updateAcceptMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? reject,
    TResult? Function(BuildContext context)? accept,
    TResult? Function(BuildContext context)? removeOffer,
    TResult? Function(String value)? updateAcceptMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? reject,
    TResult Function(BuildContext context)? accept,
    TResult Function(BuildContext context)? removeOffer,
    TResult Function(String value)? updateAcceptMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reject value) reject,
    required TResult Function(_Accept value) accept,
    required TResult Function(_RemoveOffer value) removeOffer,
    required TResult Function(_UpdateAcceptMessage value) updateAcceptMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reject value)? reject,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_RemoveOffer value)? removeOffer,
    TResult? Function(_UpdateAcceptMessage value)? updateAcceptMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reject value)? reject,
    TResult Function(_Accept value)? accept,
    TResult Function(_RemoveOffer value)? removeOffer,
    TResult Function(_UpdateAcceptMessage value)? updateAcceptMessage,
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
abstract class _$$_RejectCopyWith<$Res> {
  factory _$$_RejectCopyWith(_$_Reject value, $Res Function(_$_Reject) then) =
      __$$_RejectCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_RejectCopyWithImpl<$Res>
    extends _$TradeOfferEventCopyWithImpl<$Res, _$_Reject>
    implements _$$_RejectCopyWith<$Res> {
  __$$_RejectCopyWithImpl(_$_Reject _value, $Res Function(_$_Reject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_Reject(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_Reject implements _Reject {
  const _$_Reject({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'TradeOfferEvent.reject(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reject &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RejectCopyWith<_$_Reject> get copyWith =>
      __$$_RejectCopyWithImpl<_$_Reject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) reject,
    required TResult Function(BuildContext context) accept,
    required TResult Function(BuildContext context) removeOffer,
    required TResult Function(String value) updateAcceptMessage,
  }) {
    return reject(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? reject,
    TResult? Function(BuildContext context)? accept,
    TResult? Function(BuildContext context)? removeOffer,
    TResult? Function(String value)? updateAcceptMessage,
  }) {
    return reject?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? reject,
    TResult Function(BuildContext context)? accept,
    TResult Function(BuildContext context)? removeOffer,
    TResult Function(String value)? updateAcceptMessage,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reject value) reject,
    required TResult Function(_Accept value) accept,
    required TResult Function(_RemoveOffer value) removeOffer,
    required TResult Function(_UpdateAcceptMessage value) updateAcceptMessage,
  }) {
    return reject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reject value)? reject,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_RemoveOffer value)? removeOffer,
    TResult? Function(_UpdateAcceptMessage value)? updateAcceptMessage,
  }) {
    return reject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reject value)? reject,
    TResult Function(_Accept value)? accept,
    TResult Function(_RemoveOffer value)? removeOffer,
    TResult Function(_UpdateAcceptMessage value)? updateAcceptMessage,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject(this);
    }
    return orElse();
  }
}

abstract class _Reject implements TradeOfferEvent {
  const factory _Reject({required final BuildContext context}) = _$_Reject;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_RejectCopyWith<_$_Reject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptCopyWith<$Res> {
  factory _$$_AcceptCopyWith(_$_Accept value, $Res Function(_$_Accept) then) =
      __$$_AcceptCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_AcceptCopyWithImpl<$Res>
    extends _$TradeOfferEventCopyWithImpl<$Res, _$_Accept>
    implements _$$_AcceptCopyWith<$Res> {
  __$$_AcceptCopyWithImpl(_$_Accept _value, $Res Function(_$_Accept) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_Accept(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_Accept implements _Accept {
  const _$_Accept({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'TradeOfferEvent.accept(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Accept &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptCopyWith<_$_Accept> get copyWith =>
      __$$_AcceptCopyWithImpl<_$_Accept>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) reject,
    required TResult Function(BuildContext context) accept,
    required TResult Function(BuildContext context) removeOffer,
    required TResult Function(String value) updateAcceptMessage,
  }) {
    return accept(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? reject,
    TResult? Function(BuildContext context)? accept,
    TResult? Function(BuildContext context)? removeOffer,
    TResult? Function(String value)? updateAcceptMessage,
  }) {
    return accept?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? reject,
    TResult Function(BuildContext context)? accept,
    TResult Function(BuildContext context)? removeOffer,
    TResult Function(String value)? updateAcceptMessage,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reject value) reject,
    required TResult Function(_Accept value) accept,
    required TResult Function(_RemoveOffer value) removeOffer,
    required TResult Function(_UpdateAcceptMessage value) updateAcceptMessage,
  }) {
    return accept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reject value)? reject,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_RemoveOffer value)? removeOffer,
    TResult? Function(_UpdateAcceptMessage value)? updateAcceptMessage,
  }) {
    return accept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reject value)? reject,
    TResult Function(_Accept value)? accept,
    TResult Function(_RemoveOffer value)? removeOffer,
    TResult Function(_UpdateAcceptMessage value)? updateAcceptMessage,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(this);
    }
    return orElse();
  }
}

abstract class _Accept implements TradeOfferEvent {
  const factory _Accept({required final BuildContext context}) = _$_Accept;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_AcceptCopyWith<_$_Accept> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveOfferCopyWith<$Res> {
  factory _$$_RemoveOfferCopyWith(
          _$_RemoveOffer value, $Res Function(_$_RemoveOffer) then) =
      __$$_RemoveOfferCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_RemoveOfferCopyWithImpl<$Res>
    extends _$TradeOfferEventCopyWithImpl<$Res, _$_RemoveOffer>
    implements _$$_RemoveOfferCopyWith<$Res> {
  __$$_RemoveOfferCopyWithImpl(
      _$_RemoveOffer _value, $Res Function(_$_RemoveOffer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_RemoveOffer(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_RemoveOffer implements _RemoveOffer {
  const _$_RemoveOffer({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'TradeOfferEvent.removeOffer(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveOffer &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveOfferCopyWith<_$_RemoveOffer> get copyWith =>
      __$$_RemoveOfferCopyWithImpl<_$_RemoveOffer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) reject,
    required TResult Function(BuildContext context) accept,
    required TResult Function(BuildContext context) removeOffer,
    required TResult Function(String value) updateAcceptMessage,
  }) {
    return removeOffer(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? reject,
    TResult? Function(BuildContext context)? accept,
    TResult? Function(BuildContext context)? removeOffer,
    TResult? Function(String value)? updateAcceptMessage,
  }) {
    return removeOffer?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? reject,
    TResult Function(BuildContext context)? accept,
    TResult Function(BuildContext context)? removeOffer,
    TResult Function(String value)? updateAcceptMessage,
    required TResult orElse(),
  }) {
    if (removeOffer != null) {
      return removeOffer(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reject value) reject,
    required TResult Function(_Accept value) accept,
    required TResult Function(_RemoveOffer value) removeOffer,
    required TResult Function(_UpdateAcceptMessage value) updateAcceptMessage,
  }) {
    return removeOffer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reject value)? reject,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_RemoveOffer value)? removeOffer,
    TResult? Function(_UpdateAcceptMessage value)? updateAcceptMessage,
  }) {
    return removeOffer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reject value)? reject,
    TResult Function(_Accept value)? accept,
    TResult Function(_RemoveOffer value)? removeOffer,
    TResult Function(_UpdateAcceptMessage value)? updateAcceptMessage,
    required TResult orElse(),
  }) {
    if (removeOffer != null) {
      return removeOffer(this);
    }
    return orElse();
  }
}

abstract class _RemoveOffer implements TradeOfferEvent {
  const factory _RemoveOffer({required final BuildContext context}) =
      _$_RemoveOffer;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_RemoveOfferCopyWith<_$_RemoveOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateAcceptMessageCopyWith<$Res> {
  factory _$$_UpdateAcceptMessageCopyWith(_$_UpdateAcceptMessage value,
          $Res Function(_$_UpdateAcceptMessage) then) =
      __$$_UpdateAcceptMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_UpdateAcceptMessageCopyWithImpl<$Res>
    extends _$TradeOfferEventCopyWithImpl<$Res, _$_UpdateAcceptMessage>
    implements _$$_UpdateAcceptMessageCopyWith<$Res> {
  __$$_UpdateAcceptMessageCopyWithImpl(_$_UpdateAcceptMessage _value,
      $Res Function(_$_UpdateAcceptMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_UpdateAcceptMessage(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateAcceptMessage implements _UpdateAcceptMessage {
  const _$_UpdateAcceptMessage({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'TradeOfferEvent.updateAcceptMessage(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAcceptMessage &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAcceptMessageCopyWith<_$_UpdateAcceptMessage> get copyWith =>
      __$$_UpdateAcceptMessageCopyWithImpl<_$_UpdateAcceptMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) reject,
    required TResult Function(BuildContext context) accept,
    required TResult Function(BuildContext context) removeOffer,
    required TResult Function(String value) updateAcceptMessage,
  }) {
    return updateAcceptMessage(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? reject,
    TResult? Function(BuildContext context)? accept,
    TResult? Function(BuildContext context)? removeOffer,
    TResult? Function(String value)? updateAcceptMessage,
  }) {
    return updateAcceptMessage?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? reject,
    TResult Function(BuildContext context)? accept,
    TResult Function(BuildContext context)? removeOffer,
    TResult Function(String value)? updateAcceptMessage,
    required TResult orElse(),
  }) {
    if (updateAcceptMessage != null) {
      return updateAcceptMessage(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reject value) reject,
    required TResult Function(_Accept value) accept,
    required TResult Function(_RemoveOffer value) removeOffer,
    required TResult Function(_UpdateAcceptMessage value) updateAcceptMessage,
  }) {
    return updateAcceptMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reject value)? reject,
    TResult? Function(_Accept value)? accept,
    TResult? Function(_RemoveOffer value)? removeOffer,
    TResult? Function(_UpdateAcceptMessage value)? updateAcceptMessage,
  }) {
    return updateAcceptMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reject value)? reject,
    TResult Function(_Accept value)? accept,
    TResult Function(_RemoveOffer value)? removeOffer,
    TResult Function(_UpdateAcceptMessage value)? updateAcceptMessage,
    required TResult orElse(),
  }) {
    if (updateAcceptMessage != null) {
      return updateAcceptMessage(this);
    }
    return orElse();
  }
}

abstract class _UpdateAcceptMessage implements TradeOfferEvent {
  const factory _UpdateAcceptMessage({required final String value}) =
      _$_UpdateAcceptMessage;

  String get value;
  @JsonKey(ignore: true)
  _$$_UpdateAcceptMessageCopyWith<_$_UpdateAcceptMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TradeOfferState {
  OfferModel get offer => throw _privateConstructorUsedError;
  String get acceptMessage => throw _privateConstructorUsedError;

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
  $Res call({OfferModel offer, String acceptMessage});

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
    Object? acceptMessage = null,
  }) {
    return _then(_value.copyWith(
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as OfferModel,
      acceptMessage: null == acceptMessage
          ? _value.acceptMessage
          : acceptMessage // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({OfferModel offer, String acceptMessage});

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
    Object? acceptMessage = null,
  }) {
    return _then(_$_TradeOfferState(
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as OfferModel,
      acceptMessage: null == acceptMessage
          ? _value.acceptMessage
          : acceptMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TradeOfferState extends _TradeOfferState {
  const _$_TradeOfferState(
      {this.offer = OfferModel.empty,
      this.acceptMessage =
          'I accept your offer, how would you like to exchange cards?'})
      : super._();

  @override
  @JsonKey()
  final OfferModel offer;
  @override
  @JsonKey()
  final String acceptMessage;

  @override
  String toString() {
    return 'TradeOfferState(offer: $offer, acceptMessage: $acceptMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TradeOfferState &&
            (identical(other.offer, offer) || other.offer == offer) &&
            (identical(other.acceptMessage, acceptMessage) ||
                other.acceptMessage == acceptMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offer, acceptMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TradeOfferStateCopyWith<_$_TradeOfferState> get copyWith =>
      __$$_TradeOfferStateCopyWithImpl<_$_TradeOfferState>(this, _$identity);
}

abstract class _TradeOfferState extends TradeOfferState {
  const factory _TradeOfferState(
      {final OfferModel offer,
      final String acceptMessage}) = _$_TradeOfferState;
  const _TradeOfferState._() : super._();

  @override
  OfferModel get offer;
  @override
  String get acceptMessage;
  @override
  @JsonKey(ignore: true)
  _$$_TradeOfferStateCopyWith<_$_TradeOfferState> get copyWith =>
      throw _privateConstructorUsedError;
}
