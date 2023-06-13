// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameDetailEvent {
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
abstract class $GameDetailEventCopyWith<$Res> {
  factory $GameDetailEventCopyWith(
          GameDetailEvent value, $Res Function(GameDetailEvent) then) =
      _$GameDetailEventCopyWithImpl<$Res, GameDetailEvent>;
}

/// @nodoc
class _$GameDetailEventCopyWithImpl<$Res, $Val extends GameDetailEvent>
    implements $GameDetailEventCopyWith<$Res> {
  _$GameDetailEventCopyWithImpl(this._value, this._then);

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
    extends _$GameDetailEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'GameDetailEvent.started()';
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

abstract class _Started implements GameDetailEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$GameDetailState {
  GameModel get game => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameDetailStateCopyWith<GameDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDetailStateCopyWith<$Res> {
  factory $GameDetailStateCopyWith(
          GameDetailState value, $Res Function(GameDetailState) then) =
      _$GameDetailStateCopyWithImpl<$Res, GameDetailState>;
  @useResult
  $Res call({GameModel game});

  $GameModelCopyWith<$Res> get game;
}

/// @nodoc
class _$GameDetailStateCopyWithImpl<$Res, $Val extends GameDetailState>
    implements $GameDetailStateCopyWith<$Res> {
  _$GameDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_value.copyWith(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameModelCopyWith<$Res> get game {
    return $GameModelCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GameDetailStateCopyWith<$Res>
    implements $GameDetailStateCopyWith<$Res> {
  factory _$$_GameDetailStateCopyWith(
          _$_GameDetailState value, $Res Function(_$_GameDetailState) then) =
      __$$_GameDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameModel game});

  @override
  $GameModelCopyWith<$Res> get game;
}

/// @nodoc
class __$$_GameDetailStateCopyWithImpl<$Res>
    extends _$GameDetailStateCopyWithImpl<$Res, _$_GameDetailState>
    implements _$$_GameDetailStateCopyWith<$Res> {
  __$$_GameDetailStateCopyWithImpl(
      _$_GameDetailState _value, $Res Function(_$_GameDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_$_GameDetailState(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameModel,
    ));
  }
}

/// @nodoc

class _$_GameDetailState implements _GameDetailState {
  const _$_GameDetailState({required this.game});

  @override
  final GameModel game;

  @override
  String toString() {
    return 'GameDetailState(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameDetailState &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameDetailStateCopyWith<_$_GameDetailState> get copyWith =>
      __$$_GameDetailStateCopyWithImpl<_$_GameDetailState>(this, _$identity);
}

abstract class _GameDetailState implements GameDetailState {
  const factory _GameDetailState({required final GameModel game}) =
      _$_GameDetailState;

  @override
  GameModel get game;
  @override
  @JsonKey(ignore: true)
  _$$_GameDetailStateCopyWith<_$_GameDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
