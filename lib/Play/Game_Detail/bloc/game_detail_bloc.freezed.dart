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
    required TResult Function(BuildContext context) deleteGame,
    required TResult Function() joinGame,
    required TResult Function() leaveGame,
    required TResult Function(GameChatMessageModel message) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context)? deleteGame,
    TResult? Function()? joinGame,
    TResult? Function()? leaveGame,
    TResult? Function(GameChatMessageModel message)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context)? deleteGame,
    TResult Function()? joinGame,
    TResult Function()? leaveGame,
    TResult Function(GameChatMessageModel message)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteGame value) deleteGame,
    required TResult Function(_JoinGame value) joinGame,
    required TResult Function(_LeaveGame value) leaveGame,
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteGame value)? deleteGame,
    TResult? Function(_JoinGame value)? joinGame,
    TResult? Function(_LeaveGame value)? leaveGame,
    TResult? Function(_SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteGame value)? deleteGame,
    TResult Function(_JoinGame value)? joinGame,
    TResult Function(_LeaveGame value)? leaveGame,
    TResult Function(_SendMessage value)? sendMessage,
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
    required TResult Function(BuildContext context) deleteGame,
    required TResult Function() joinGame,
    required TResult Function() leaveGame,
    required TResult Function(GameChatMessageModel message) sendMessage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context)? deleteGame,
    TResult? Function()? joinGame,
    TResult? Function()? leaveGame,
    TResult? Function(GameChatMessageModel message)? sendMessage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context)? deleteGame,
    TResult Function()? joinGame,
    TResult Function()? leaveGame,
    TResult Function(GameChatMessageModel message)? sendMessage,
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
    required TResult Function(_DeleteGame value) deleteGame,
    required TResult Function(_JoinGame value) joinGame,
    required TResult Function(_LeaveGame value) leaveGame,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteGame value)? deleteGame,
    TResult? Function(_JoinGame value)? joinGame,
    TResult? Function(_LeaveGame value)? leaveGame,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteGame value)? deleteGame,
    TResult Function(_JoinGame value)? joinGame,
    TResult Function(_LeaveGame value)? leaveGame,
    TResult Function(_SendMessage value)? sendMessage,
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
abstract class _$$_DeleteGameCopyWith<$Res> {
  factory _$$_DeleteGameCopyWith(
          _$_DeleteGame value, $Res Function(_$_DeleteGame) then) =
      __$$_DeleteGameCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_DeleteGameCopyWithImpl<$Res>
    extends _$GameDetailEventCopyWithImpl<$Res, _$_DeleteGame>
    implements _$$_DeleteGameCopyWith<$Res> {
  __$$_DeleteGameCopyWithImpl(
      _$_DeleteGame _value, $Res Function(_$_DeleteGame) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_DeleteGame(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_DeleteGame implements _DeleteGame {
  const _$_DeleteGame({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'GameDetailEvent.deleteGame(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteGame &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteGameCopyWith<_$_DeleteGame> get copyWith =>
      __$$_DeleteGameCopyWithImpl<_$_DeleteGame>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BuildContext context) deleteGame,
    required TResult Function() joinGame,
    required TResult Function() leaveGame,
    required TResult Function(GameChatMessageModel message) sendMessage,
  }) {
    return deleteGame(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context)? deleteGame,
    TResult? Function()? joinGame,
    TResult? Function()? leaveGame,
    TResult? Function(GameChatMessageModel message)? sendMessage,
  }) {
    return deleteGame?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context)? deleteGame,
    TResult Function()? joinGame,
    TResult Function()? leaveGame,
    TResult Function(GameChatMessageModel message)? sendMessage,
    required TResult orElse(),
  }) {
    if (deleteGame != null) {
      return deleteGame(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteGame value) deleteGame,
    required TResult Function(_JoinGame value) joinGame,
    required TResult Function(_LeaveGame value) leaveGame,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return deleteGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteGame value)? deleteGame,
    TResult? Function(_JoinGame value)? joinGame,
    TResult? Function(_LeaveGame value)? leaveGame,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return deleteGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteGame value)? deleteGame,
    TResult Function(_JoinGame value)? joinGame,
    TResult Function(_LeaveGame value)? leaveGame,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (deleteGame != null) {
      return deleteGame(this);
    }
    return orElse();
  }
}

abstract class _DeleteGame implements GameDetailEvent {
  const factory _DeleteGame({required final BuildContext context}) =
      _$_DeleteGame;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_DeleteGameCopyWith<_$_DeleteGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JoinGameCopyWith<$Res> {
  factory _$$_JoinGameCopyWith(
          _$_JoinGame value, $Res Function(_$_JoinGame) then) =
      __$$_JoinGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JoinGameCopyWithImpl<$Res>
    extends _$GameDetailEventCopyWithImpl<$Res, _$_JoinGame>
    implements _$$_JoinGameCopyWith<$Res> {
  __$$_JoinGameCopyWithImpl(
      _$_JoinGame _value, $Res Function(_$_JoinGame) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_JoinGame implements _JoinGame {
  const _$_JoinGame();

  @override
  String toString() {
    return 'GameDetailEvent.joinGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JoinGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BuildContext context) deleteGame,
    required TResult Function() joinGame,
    required TResult Function() leaveGame,
    required TResult Function(GameChatMessageModel message) sendMessage,
  }) {
    return joinGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context)? deleteGame,
    TResult? Function()? joinGame,
    TResult? Function()? leaveGame,
    TResult? Function(GameChatMessageModel message)? sendMessage,
  }) {
    return joinGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context)? deleteGame,
    TResult Function()? joinGame,
    TResult Function()? leaveGame,
    TResult Function(GameChatMessageModel message)? sendMessage,
    required TResult orElse(),
  }) {
    if (joinGame != null) {
      return joinGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteGame value) deleteGame,
    required TResult Function(_JoinGame value) joinGame,
    required TResult Function(_LeaveGame value) leaveGame,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return joinGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteGame value)? deleteGame,
    TResult? Function(_JoinGame value)? joinGame,
    TResult? Function(_LeaveGame value)? leaveGame,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return joinGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteGame value)? deleteGame,
    TResult Function(_JoinGame value)? joinGame,
    TResult Function(_LeaveGame value)? leaveGame,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (joinGame != null) {
      return joinGame(this);
    }
    return orElse();
  }
}

abstract class _JoinGame implements GameDetailEvent {
  const factory _JoinGame() = _$_JoinGame;
}

/// @nodoc
abstract class _$$_LeaveGameCopyWith<$Res> {
  factory _$$_LeaveGameCopyWith(
          _$_LeaveGame value, $Res Function(_$_LeaveGame) then) =
      __$$_LeaveGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LeaveGameCopyWithImpl<$Res>
    extends _$GameDetailEventCopyWithImpl<$Res, _$_LeaveGame>
    implements _$$_LeaveGameCopyWith<$Res> {
  __$$_LeaveGameCopyWithImpl(
      _$_LeaveGame _value, $Res Function(_$_LeaveGame) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LeaveGame implements _LeaveGame {
  const _$_LeaveGame();

  @override
  String toString() {
    return 'GameDetailEvent.leaveGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LeaveGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BuildContext context) deleteGame,
    required TResult Function() joinGame,
    required TResult Function() leaveGame,
    required TResult Function(GameChatMessageModel message) sendMessage,
  }) {
    return leaveGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context)? deleteGame,
    TResult? Function()? joinGame,
    TResult? Function()? leaveGame,
    TResult? Function(GameChatMessageModel message)? sendMessage,
  }) {
    return leaveGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context)? deleteGame,
    TResult Function()? joinGame,
    TResult Function()? leaveGame,
    TResult Function(GameChatMessageModel message)? sendMessage,
    required TResult orElse(),
  }) {
    if (leaveGame != null) {
      return leaveGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteGame value) deleteGame,
    required TResult Function(_JoinGame value) joinGame,
    required TResult Function(_LeaveGame value) leaveGame,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return leaveGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteGame value)? deleteGame,
    TResult? Function(_JoinGame value)? joinGame,
    TResult? Function(_LeaveGame value)? leaveGame,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return leaveGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteGame value)? deleteGame,
    TResult Function(_JoinGame value)? joinGame,
    TResult Function(_LeaveGame value)? leaveGame,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (leaveGame != null) {
      return leaveGame(this);
    }
    return orElse();
  }
}

abstract class _LeaveGame implements GameDetailEvent {
  const factory _LeaveGame() = _$_LeaveGame;
}

/// @nodoc
abstract class _$$_SendMessageCopyWith<$Res> {
  factory _$$_SendMessageCopyWith(
          _$_SendMessage value, $Res Function(_$_SendMessage) then) =
      __$$_SendMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({GameChatMessageModel message});

  $GameChatMessageModelCopyWith<$Res> get message;
}

/// @nodoc
class __$$_SendMessageCopyWithImpl<$Res>
    extends _$GameDetailEventCopyWithImpl<$Res, _$_SendMessage>
    implements _$$_SendMessageCopyWith<$Res> {
  __$$_SendMessageCopyWithImpl(
      _$_SendMessage _value, $Res Function(_$_SendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_SendMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as GameChatMessageModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GameChatMessageModelCopyWith<$Res> get message {
    return $GameChatMessageModelCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage({required this.message});

  @override
  final GameChatMessageModel message;

  @override
  String toString() {
    return 'GameDetailEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      __$$_SendMessageCopyWithImpl<_$_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BuildContext context) deleteGame,
    required TResult Function() joinGame,
    required TResult Function() leaveGame,
    required TResult Function(GameChatMessageModel message) sendMessage,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context)? deleteGame,
    TResult? Function()? joinGame,
    TResult? Function()? leaveGame,
    TResult? Function(GameChatMessageModel message)? sendMessage,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context)? deleteGame,
    TResult Function()? joinGame,
    TResult Function()? leaveGame,
    TResult Function(GameChatMessageModel message)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteGame value) deleteGame,
    required TResult Function(_JoinGame value) joinGame,
    required TResult Function(_LeaveGame value) leaveGame,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteGame value)? deleteGame,
    TResult? Function(_JoinGame value)? joinGame,
    TResult? Function(_LeaveGame value)? leaveGame,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteGame value)? deleteGame,
    TResult Function(_JoinGame value)? joinGame,
    TResult Function(_LeaveGame value)? leaveGame,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements GameDetailEvent {
  const factory _SendMessage({required final GameChatMessageModel message}) =
      _$_SendMessage;

  GameChatMessageModel get message;
  @JsonKey(ignore: true)
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
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
