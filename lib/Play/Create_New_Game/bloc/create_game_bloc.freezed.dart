// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String description) changeDescription,
    required TResult Function(String location) changeLocation,
    required TResult Function(DateTime dateAndTime) changeDateAndTime,
    required TResult Function(int cost) changeCost,
    required TResult Function(int maxPlayers) changeMaxPlayers,
    required TResult Function(GameFormats format) changeFormat,
    required TResult Function() createGame,
    required TResult Function(String gameDocID) updateGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String location)? changeLocation,
    TResult? Function(DateTime dateAndTime)? changeDateAndTime,
    TResult? Function(int cost)? changeCost,
    TResult? Function(int maxPlayers)? changeMaxPlayers,
    TResult? Function(GameFormats format)? changeFormat,
    TResult? Function()? createGame,
    TResult? Function(String gameDocID)? updateGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String description)? changeDescription,
    TResult Function(String location)? changeLocation,
    TResult Function(DateTime dateAndTime)? changeDateAndTime,
    TResult Function(int cost)? changeCost,
    TResult Function(int maxPlayers)? changeMaxPlayers,
    TResult Function(GameFormats format)? changeFormat,
    TResult Function()? createGame,
    TResult Function(String gameDocID)? updateGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_ChangeDateAndTime value) changeDateAndTime,
    required TResult Function(_ChangeCost value) changeCost,
    required TResult Function(_ChangeMaxPlayers value) changeMaxPlayers,
    required TResult Function(_ChangeFormat value) changeFormat,
    required TResult Function(_CreateGame value) createGame,
    required TResult Function(_UpdateGame value) updateGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_ChangeLocation value)? changeLocation,
    TResult? Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult? Function(_ChangeCost value)? changeCost,
    TResult? Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult? Function(_ChangeFormat value)? changeFormat,
    TResult? Function(_CreateGame value)? createGame,
    TResult? Function(_UpdateGame value)? updateGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult Function(_ChangeCost value)? changeCost,
    TResult Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult Function(_ChangeFormat value)? changeFormat,
    TResult Function(_CreateGame value)? createGame,
    TResult Function(_UpdateGame value)? updateGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameEventCopyWith<$Res> {
  factory $CreateGameEventCopyWith(
          CreateGameEvent value, $Res Function(CreateGameEvent) then) =
      _$CreateGameEventCopyWithImpl<$Res, CreateGameEvent>;
}

/// @nodoc
class _$CreateGameEventCopyWithImpl<$Res, $Val extends CreateGameEvent>
    implements $CreateGameEventCopyWith<$Res> {
  _$CreateGameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeTitleCopyWith<$Res> {
  factory _$$_ChangeTitleCopyWith(
          _$_ChangeTitle value, $Res Function(_$_ChangeTitle) then) =
      __$$_ChangeTitleCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_ChangeTitleCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res, _$_ChangeTitle>
    implements _$$_ChangeTitleCopyWith<$Res> {
  __$$_ChangeTitleCopyWithImpl(
      _$_ChangeTitle _value, $Res Function(_$_ChangeTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_ChangeTitle(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeTitle implements _ChangeTitle {
  const _$_ChangeTitle({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'CreateGameEvent.changeTitle(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTitle &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTitleCopyWith<_$_ChangeTitle> get copyWith =>
      __$$_ChangeTitleCopyWithImpl<_$_ChangeTitle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String description) changeDescription,
    required TResult Function(String location) changeLocation,
    required TResult Function(DateTime dateAndTime) changeDateAndTime,
    required TResult Function(int cost) changeCost,
    required TResult Function(int maxPlayers) changeMaxPlayers,
    required TResult Function(GameFormats format) changeFormat,
    required TResult Function() createGame,
    required TResult Function(String gameDocID) updateGame,
  }) {
    return changeTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String location)? changeLocation,
    TResult? Function(DateTime dateAndTime)? changeDateAndTime,
    TResult? Function(int cost)? changeCost,
    TResult? Function(int maxPlayers)? changeMaxPlayers,
    TResult? Function(GameFormats format)? changeFormat,
    TResult? Function()? createGame,
    TResult? Function(String gameDocID)? updateGame,
  }) {
    return changeTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String description)? changeDescription,
    TResult Function(String location)? changeLocation,
    TResult Function(DateTime dateAndTime)? changeDateAndTime,
    TResult Function(int cost)? changeCost,
    TResult Function(int maxPlayers)? changeMaxPlayers,
    TResult Function(GameFormats format)? changeFormat,
    TResult Function()? createGame,
    TResult Function(String gameDocID)? updateGame,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_ChangeDateAndTime value) changeDateAndTime,
    required TResult Function(_ChangeCost value) changeCost,
    required TResult Function(_ChangeMaxPlayers value) changeMaxPlayers,
    required TResult Function(_ChangeFormat value) changeFormat,
    required TResult Function(_CreateGame value) createGame,
    required TResult Function(_UpdateGame value) updateGame,
  }) {
    return changeTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_ChangeLocation value)? changeLocation,
    TResult? Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult? Function(_ChangeCost value)? changeCost,
    TResult? Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult? Function(_ChangeFormat value)? changeFormat,
    TResult? Function(_CreateGame value)? createGame,
    TResult? Function(_UpdateGame value)? updateGame,
  }) {
    return changeTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult Function(_ChangeCost value)? changeCost,
    TResult Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult Function(_ChangeFormat value)? changeFormat,
    TResult Function(_CreateGame value)? createGame,
    TResult Function(_UpdateGame value)? updateGame,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(this);
    }
    return orElse();
  }
}

abstract class _ChangeTitle implements CreateGameEvent {
  const factory _ChangeTitle({required final String title}) = _$_ChangeTitle;

  String get title;
  @JsonKey(ignore: true)
  _$$_ChangeTitleCopyWith<_$_ChangeTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeDescriptionCopyWith<$Res> {
  factory _$$_ChangeDescriptionCopyWith(_$_ChangeDescription value,
          $Res Function(_$_ChangeDescription) then) =
      __$$_ChangeDescriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$_ChangeDescriptionCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res, _$_ChangeDescription>
    implements _$$_ChangeDescriptionCopyWith<$Res> {
  __$$_ChangeDescriptionCopyWithImpl(
      _$_ChangeDescription _value, $Res Function(_$_ChangeDescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$_ChangeDescription(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeDescription implements _ChangeDescription {
  const _$_ChangeDescription({required this.description});

  @override
  final String description;

  @override
  String toString() {
    return 'CreateGameEvent.changeDescription(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeDescription &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeDescriptionCopyWith<_$_ChangeDescription> get copyWith =>
      __$$_ChangeDescriptionCopyWithImpl<_$_ChangeDescription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String description) changeDescription,
    required TResult Function(String location) changeLocation,
    required TResult Function(DateTime dateAndTime) changeDateAndTime,
    required TResult Function(int cost) changeCost,
    required TResult Function(int maxPlayers) changeMaxPlayers,
    required TResult Function(GameFormats format) changeFormat,
    required TResult Function() createGame,
    required TResult Function(String gameDocID) updateGame,
  }) {
    return changeDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String location)? changeLocation,
    TResult? Function(DateTime dateAndTime)? changeDateAndTime,
    TResult? Function(int cost)? changeCost,
    TResult? Function(int maxPlayers)? changeMaxPlayers,
    TResult? Function(GameFormats format)? changeFormat,
    TResult? Function()? createGame,
    TResult? Function(String gameDocID)? updateGame,
  }) {
    return changeDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String description)? changeDescription,
    TResult Function(String location)? changeLocation,
    TResult Function(DateTime dateAndTime)? changeDateAndTime,
    TResult Function(int cost)? changeCost,
    TResult Function(int maxPlayers)? changeMaxPlayers,
    TResult Function(GameFormats format)? changeFormat,
    TResult Function()? createGame,
    TResult Function(String gameDocID)? updateGame,
    required TResult orElse(),
  }) {
    if (changeDescription != null) {
      return changeDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_ChangeDateAndTime value) changeDateAndTime,
    required TResult Function(_ChangeCost value) changeCost,
    required TResult Function(_ChangeMaxPlayers value) changeMaxPlayers,
    required TResult Function(_ChangeFormat value) changeFormat,
    required TResult Function(_CreateGame value) createGame,
    required TResult Function(_UpdateGame value) updateGame,
  }) {
    return changeDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_ChangeLocation value)? changeLocation,
    TResult? Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult? Function(_ChangeCost value)? changeCost,
    TResult? Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult? Function(_ChangeFormat value)? changeFormat,
    TResult? Function(_CreateGame value)? createGame,
    TResult? Function(_UpdateGame value)? updateGame,
  }) {
    return changeDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult Function(_ChangeCost value)? changeCost,
    TResult Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult Function(_ChangeFormat value)? changeFormat,
    TResult Function(_CreateGame value)? createGame,
    TResult Function(_UpdateGame value)? updateGame,
    required TResult orElse(),
  }) {
    if (changeDescription != null) {
      return changeDescription(this);
    }
    return orElse();
  }
}

abstract class _ChangeDescription implements CreateGameEvent {
  const factory _ChangeDescription({required final String description}) =
      _$_ChangeDescription;

  String get description;
  @JsonKey(ignore: true)
  _$$_ChangeDescriptionCopyWith<_$_ChangeDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeLocationCopyWith<$Res> {
  factory _$$_ChangeLocationCopyWith(
          _$_ChangeLocation value, $Res Function(_$_ChangeLocation) then) =
      __$$_ChangeLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$_ChangeLocationCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res, _$_ChangeLocation>
    implements _$$_ChangeLocationCopyWith<$Res> {
  __$$_ChangeLocationCopyWithImpl(
      _$_ChangeLocation _value, $Res Function(_$_ChangeLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$_ChangeLocation(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeLocation implements _ChangeLocation {
  const _$_ChangeLocation({required this.location});

  @override
  final String location;

  @override
  String toString() {
    return 'CreateGameEvent.changeLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLocation &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLocationCopyWith<_$_ChangeLocation> get copyWith =>
      __$$_ChangeLocationCopyWithImpl<_$_ChangeLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String description) changeDescription,
    required TResult Function(String location) changeLocation,
    required TResult Function(DateTime dateAndTime) changeDateAndTime,
    required TResult Function(int cost) changeCost,
    required TResult Function(int maxPlayers) changeMaxPlayers,
    required TResult Function(GameFormats format) changeFormat,
    required TResult Function() createGame,
    required TResult Function(String gameDocID) updateGame,
  }) {
    return changeLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String location)? changeLocation,
    TResult? Function(DateTime dateAndTime)? changeDateAndTime,
    TResult? Function(int cost)? changeCost,
    TResult? Function(int maxPlayers)? changeMaxPlayers,
    TResult? Function(GameFormats format)? changeFormat,
    TResult? Function()? createGame,
    TResult? Function(String gameDocID)? updateGame,
  }) {
    return changeLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String description)? changeDescription,
    TResult Function(String location)? changeLocation,
    TResult Function(DateTime dateAndTime)? changeDateAndTime,
    TResult Function(int cost)? changeCost,
    TResult Function(int maxPlayers)? changeMaxPlayers,
    TResult Function(GameFormats format)? changeFormat,
    TResult Function()? createGame,
    TResult Function(String gameDocID)? updateGame,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_ChangeDateAndTime value) changeDateAndTime,
    required TResult Function(_ChangeCost value) changeCost,
    required TResult Function(_ChangeMaxPlayers value) changeMaxPlayers,
    required TResult Function(_ChangeFormat value) changeFormat,
    required TResult Function(_CreateGame value) createGame,
    required TResult Function(_UpdateGame value) updateGame,
  }) {
    return changeLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_ChangeLocation value)? changeLocation,
    TResult? Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult? Function(_ChangeCost value)? changeCost,
    TResult? Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult? Function(_ChangeFormat value)? changeFormat,
    TResult? Function(_CreateGame value)? createGame,
    TResult? Function(_UpdateGame value)? updateGame,
  }) {
    return changeLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult Function(_ChangeCost value)? changeCost,
    TResult Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult Function(_ChangeFormat value)? changeFormat,
    TResult Function(_CreateGame value)? createGame,
    TResult Function(_UpdateGame value)? updateGame,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocation implements CreateGameEvent {
  const factory _ChangeLocation({required final String location}) =
      _$_ChangeLocation;

  String get location;
  @JsonKey(ignore: true)
  _$$_ChangeLocationCopyWith<_$_ChangeLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeDateAndTimeCopyWith<$Res> {
  factory _$$_ChangeDateAndTimeCopyWith(_$_ChangeDateAndTime value,
          $Res Function(_$_ChangeDateAndTime) then) =
      __$$_ChangeDateAndTimeCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateAndTime});
}

/// @nodoc
class __$$_ChangeDateAndTimeCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res, _$_ChangeDateAndTime>
    implements _$$_ChangeDateAndTimeCopyWith<$Res> {
  __$$_ChangeDateAndTimeCopyWithImpl(
      _$_ChangeDateAndTime _value, $Res Function(_$_ChangeDateAndTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateAndTime = null,
  }) {
    return _then(_$_ChangeDateAndTime(
      dateAndTime: null == dateAndTime
          ? _value.dateAndTime
          : dateAndTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ChangeDateAndTime implements _ChangeDateAndTime {
  const _$_ChangeDateAndTime({required this.dateAndTime});

  @override
  final DateTime dateAndTime;

  @override
  String toString() {
    return 'CreateGameEvent.changeDateAndTime(dateAndTime: $dateAndTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeDateAndTime &&
            (identical(other.dateAndTime, dateAndTime) ||
                other.dateAndTime == dateAndTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateAndTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeDateAndTimeCopyWith<_$_ChangeDateAndTime> get copyWith =>
      __$$_ChangeDateAndTimeCopyWithImpl<_$_ChangeDateAndTime>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String description) changeDescription,
    required TResult Function(String location) changeLocation,
    required TResult Function(DateTime dateAndTime) changeDateAndTime,
    required TResult Function(int cost) changeCost,
    required TResult Function(int maxPlayers) changeMaxPlayers,
    required TResult Function(GameFormats format) changeFormat,
    required TResult Function() createGame,
    required TResult Function(String gameDocID) updateGame,
  }) {
    return changeDateAndTime(dateAndTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String location)? changeLocation,
    TResult? Function(DateTime dateAndTime)? changeDateAndTime,
    TResult? Function(int cost)? changeCost,
    TResult? Function(int maxPlayers)? changeMaxPlayers,
    TResult? Function(GameFormats format)? changeFormat,
    TResult? Function()? createGame,
    TResult? Function(String gameDocID)? updateGame,
  }) {
    return changeDateAndTime?.call(dateAndTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String description)? changeDescription,
    TResult Function(String location)? changeLocation,
    TResult Function(DateTime dateAndTime)? changeDateAndTime,
    TResult Function(int cost)? changeCost,
    TResult Function(int maxPlayers)? changeMaxPlayers,
    TResult Function(GameFormats format)? changeFormat,
    TResult Function()? createGame,
    TResult Function(String gameDocID)? updateGame,
    required TResult orElse(),
  }) {
    if (changeDateAndTime != null) {
      return changeDateAndTime(dateAndTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_ChangeDateAndTime value) changeDateAndTime,
    required TResult Function(_ChangeCost value) changeCost,
    required TResult Function(_ChangeMaxPlayers value) changeMaxPlayers,
    required TResult Function(_ChangeFormat value) changeFormat,
    required TResult Function(_CreateGame value) createGame,
    required TResult Function(_UpdateGame value) updateGame,
  }) {
    return changeDateAndTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_ChangeLocation value)? changeLocation,
    TResult? Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult? Function(_ChangeCost value)? changeCost,
    TResult? Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult? Function(_ChangeFormat value)? changeFormat,
    TResult? Function(_CreateGame value)? createGame,
    TResult? Function(_UpdateGame value)? updateGame,
  }) {
    return changeDateAndTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult Function(_ChangeCost value)? changeCost,
    TResult Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult Function(_ChangeFormat value)? changeFormat,
    TResult Function(_CreateGame value)? createGame,
    TResult Function(_UpdateGame value)? updateGame,
    required TResult orElse(),
  }) {
    if (changeDateAndTime != null) {
      return changeDateAndTime(this);
    }
    return orElse();
  }
}

abstract class _ChangeDateAndTime implements CreateGameEvent {
  const factory _ChangeDateAndTime({required final DateTime dateAndTime}) =
      _$_ChangeDateAndTime;

  DateTime get dateAndTime;
  @JsonKey(ignore: true)
  _$$_ChangeDateAndTimeCopyWith<_$_ChangeDateAndTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeCostCopyWith<$Res> {
  factory _$$_ChangeCostCopyWith(
          _$_ChangeCost value, $Res Function(_$_ChangeCost) then) =
      __$$_ChangeCostCopyWithImpl<$Res>;
  @useResult
  $Res call({int cost});
}

/// @nodoc
class __$$_ChangeCostCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res, _$_ChangeCost>
    implements _$$_ChangeCostCopyWith<$Res> {
  __$$_ChangeCostCopyWithImpl(
      _$_ChangeCost _value, $Res Function(_$_ChangeCost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cost = null,
  }) {
    return _then(_$_ChangeCost(
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeCost implements _ChangeCost {
  const _$_ChangeCost({required this.cost});

  @override
  final int cost;

  @override
  String toString() {
    return 'CreateGameEvent.changeCost(cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeCost &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeCostCopyWith<_$_ChangeCost> get copyWith =>
      __$$_ChangeCostCopyWithImpl<_$_ChangeCost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String description) changeDescription,
    required TResult Function(String location) changeLocation,
    required TResult Function(DateTime dateAndTime) changeDateAndTime,
    required TResult Function(int cost) changeCost,
    required TResult Function(int maxPlayers) changeMaxPlayers,
    required TResult Function(GameFormats format) changeFormat,
    required TResult Function() createGame,
    required TResult Function(String gameDocID) updateGame,
  }) {
    return changeCost(cost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String location)? changeLocation,
    TResult? Function(DateTime dateAndTime)? changeDateAndTime,
    TResult? Function(int cost)? changeCost,
    TResult? Function(int maxPlayers)? changeMaxPlayers,
    TResult? Function(GameFormats format)? changeFormat,
    TResult? Function()? createGame,
    TResult? Function(String gameDocID)? updateGame,
  }) {
    return changeCost?.call(cost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String description)? changeDescription,
    TResult Function(String location)? changeLocation,
    TResult Function(DateTime dateAndTime)? changeDateAndTime,
    TResult Function(int cost)? changeCost,
    TResult Function(int maxPlayers)? changeMaxPlayers,
    TResult Function(GameFormats format)? changeFormat,
    TResult Function()? createGame,
    TResult Function(String gameDocID)? updateGame,
    required TResult orElse(),
  }) {
    if (changeCost != null) {
      return changeCost(cost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_ChangeDateAndTime value) changeDateAndTime,
    required TResult Function(_ChangeCost value) changeCost,
    required TResult Function(_ChangeMaxPlayers value) changeMaxPlayers,
    required TResult Function(_ChangeFormat value) changeFormat,
    required TResult Function(_CreateGame value) createGame,
    required TResult Function(_UpdateGame value) updateGame,
  }) {
    return changeCost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_ChangeLocation value)? changeLocation,
    TResult? Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult? Function(_ChangeCost value)? changeCost,
    TResult? Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult? Function(_ChangeFormat value)? changeFormat,
    TResult? Function(_CreateGame value)? createGame,
    TResult? Function(_UpdateGame value)? updateGame,
  }) {
    return changeCost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult Function(_ChangeCost value)? changeCost,
    TResult Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult Function(_ChangeFormat value)? changeFormat,
    TResult Function(_CreateGame value)? createGame,
    TResult Function(_UpdateGame value)? updateGame,
    required TResult orElse(),
  }) {
    if (changeCost != null) {
      return changeCost(this);
    }
    return orElse();
  }
}

abstract class _ChangeCost implements CreateGameEvent {
  const factory _ChangeCost({required final int cost}) = _$_ChangeCost;

  int get cost;
  @JsonKey(ignore: true)
  _$$_ChangeCostCopyWith<_$_ChangeCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeMaxPlayersCopyWith<$Res> {
  factory _$$_ChangeMaxPlayersCopyWith(
          _$_ChangeMaxPlayers value, $Res Function(_$_ChangeMaxPlayers) then) =
      __$$_ChangeMaxPlayersCopyWithImpl<$Res>;
  @useResult
  $Res call({int maxPlayers});
}

/// @nodoc
class __$$_ChangeMaxPlayersCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res, _$_ChangeMaxPlayers>
    implements _$$_ChangeMaxPlayersCopyWith<$Res> {
  __$$_ChangeMaxPlayersCopyWithImpl(
      _$_ChangeMaxPlayers _value, $Res Function(_$_ChangeMaxPlayers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPlayers = null,
  }) {
    return _then(_$_ChangeMaxPlayers(
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeMaxPlayers implements _ChangeMaxPlayers {
  const _$_ChangeMaxPlayers({required this.maxPlayers});

  @override
  final int maxPlayers;

  @override
  String toString() {
    return 'CreateGameEvent.changeMaxPlayers(maxPlayers: $maxPlayers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeMaxPlayers &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxPlayers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeMaxPlayersCopyWith<_$_ChangeMaxPlayers> get copyWith =>
      __$$_ChangeMaxPlayersCopyWithImpl<_$_ChangeMaxPlayers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String description) changeDescription,
    required TResult Function(String location) changeLocation,
    required TResult Function(DateTime dateAndTime) changeDateAndTime,
    required TResult Function(int cost) changeCost,
    required TResult Function(int maxPlayers) changeMaxPlayers,
    required TResult Function(GameFormats format) changeFormat,
    required TResult Function() createGame,
    required TResult Function(String gameDocID) updateGame,
  }) {
    return changeMaxPlayers(maxPlayers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String location)? changeLocation,
    TResult? Function(DateTime dateAndTime)? changeDateAndTime,
    TResult? Function(int cost)? changeCost,
    TResult? Function(int maxPlayers)? changeMaxPlayers,
    TResult? Function(GameFormats format)? changeFormat,
    TResult? Function()? createGame,
    TResult? Function(String gameDocID)? updateGame,
  }) {
    return changeMaxPlayers?.call(maxPlayers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String description)? changeDescription,
    TResult Function(String location)? changeLocation,
    TResult Function(DateTime dateAndTime)? changeDateAndTime,
    TResult Function(int cost)? changeCost,
    TResult Function(int maxPlayers)? changeMaxPlayers,
    TResult Function(GameFormats format)? changeFormat,
    TResult Function()? createGame,
    TResult Function(String gameDocID)? updateGame,
    required TResult orElse(),
  }) {
    if (changeMaxPlayers != null) {
      return changeMaxPlayers(maxPlayers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_ChangeDateAndTime value) changeDateAndTime,
    required TResult Function(_ChangeCost value) changeCost,
    required TResult Function(_ChangeMaxPlayers value) changeMaxPlayers,
    required TResult Function(_ChangeFormat value) changeFormat,
    required TResult Function(_CreateGame value) createGame,
    required TResult Function(_UpdateGame value) updateGame,
  }) {
    return changeMaxPlayers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_ChangeLocation value)? changeLocation,
    TResult? Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult? Function(_ChangeCost value)? changeCost,
    TResult? Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult? Function(_ChangeFormat value)? changeFormat,
    TResult? Function(_CreateGame value)? createGame,
    TResult? Function(_UpdateGame value)? updateGame,
  }) {
    return changeMaxPlayers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult Function(_ChangeCost value)? changeCost,
    TResult Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult Function(_ChangeFormat value)? changeFormat,
    TResult Function(_CreateGame value)? createGame,
    TResult Function(_UpdateGame value)? updateGame,
    required TResult orElse(),
  }) {
    if (changeMaxPlayers != null) {
      return changeMaxPlayers(this);
    }
    return orElse();
  }
}

abstract class _ChangeMaxPlayers implements CreateGameEvent {
  const factory _ChangeMaxPlayers({required final int maxPlayers}) =
      _$_ChangeMaxPlayers;

  int get maxPlayers;
  @JsonKey(ignore: true)
  _$$_ChangeMaxPlayersCopyWith<_$_ChangeMaxPlayers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeFormatCopyWith<$Res> {
  factory _$$_ChangeFormatCopyWith(
          _$_ChangeFormat value, $Res Function(_$_ChangeFormat) then) =
      __$$_ChangeFormatCopyWithImpl<$Res>;
  @useResult
  $Res call({GameFormats format});
}

/// @nodoc
class __$$_ChangeFormatCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res, _$_ChangeFormat>
    implements _$$_ChangeFormatCopyWith<$Res> {
  __$$_ChangeFormatCopyWithImpl(
      _$_ChangeFormat _value, $Res Function(_$_ChangeFormat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
  }) {
    return _then(_$_ChangeFormat(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as GameFormats,
    ));
  }
}

/// @nodoc

class _$_ChangeFormat implements _ChangeFormat {
  const _$_ChangeFormat({required this.format});

  @override
  final GameFormats format;

  @override
  String toString() {
    return 'CreateGameEvent.changeFormat(format: $format)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeFormat &&
            (identical(other.format, format) || other.format == format));
  }

  @override
  int get hashCode => Object.hash(runtimeType, format);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeFormatCopyWith<_$_ChangeFormat> get copyWith =>
      __$$_ChangeFormatCopyWithImpl<_$_ChangeFormat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String description) changeDescription,
    required TResult Function(String location) changeLocation,
    required TResult Function(DateTime dateAndTime) changeDateAndTime,
    required TResult Function(int cost) changeCost,
    required TResult Function(int maxPlayers) changeMaxPlayers,
    required TResult Function(GameFormats format) changeFormat,
    required TResult Function() createGame,
    required TResult Function(String gameDocID) updateGame,
  }) {
    return changeFormat(format);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String location)? changeLocation,
    TResult? Function(DateTime dateAndTime)? changeDateAndTime,
    TResult? Function(int cost)? changeCost,
    TResult? Function(int maxPlayers)? changeMaxPlayers,
    TResult? Function(GameFormats format)? changeFormat,
    TResult? Function()? createGame,
    TResult? Function(String gameDocID)? updateGame,
  }) {
    return changeFormat?.call(format);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String description)? changeDescription,
    TResult Function(String location)? changeLocation,
    TResult Function(DateTime dateAndTime)? changeDateAndTime,
    TResult Function(int cost)? changeCost,
    TResult Function(int maxPlayers)? changeMaxPlayers,
    TResult Function(GameFormats format)? changeFormat,
    TResult Function()? createGame,
    TResult Function(String gameDocID)? updateGame,
    required TResult orElse(),
  }) {
    if (changeFormat != null) {
      return changeFormat(format);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_ChangeDateAndTime value) changeDateAndTime,
    required TResult Function(_ChangeCost value) changeCost,
    required TResult Function(_ChangeMaxPlayers value) changeMaxPlayers,
    required TResult Function(_ChangeFormat value) changeFormat,
    required TResult Function(_CreateGame value) createGame,
    required TResult Function(_UpdateGame value) updateGame,
  }) {
    return changeFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_ChangeLocation value)? changeLocation,
    TResult? Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult? Function(_ChangeCost value)? changeCost,
    TResult? Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult? Function(_ChangeFormat value)? changeFormat,
    TResult? Function(_CreateGame value)? createGame,
    TResult? Function(_UpdateGame value)? updateGame,
  }) {
    return changeFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult Function(_ChangeCost value)? changeCost,
    TResult Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult Function(_ChangeFormat value)? changeFormat,
    TResult Function(_CreateGame value)? createGame,
    TResult Function(_UpdateGame value)? updateGame,
    required TResult orElse(),
  }) {
    if (changeFormat != null) {
      return changeFormat(this);
    }
    return orElse();
  }
}

abstract class _ChangeFormat implements CreateGameEvent {
  const factory _ChangeFormat({required final GameFormats format}) =
      _$_ChangeFormat;

  GameFormats get format;
  @JsonKey(ignore: true)
  _$$_ChangeFormatCopyWith<_$_ChangeFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateGameCopyWith<$Res> {
  factory _$$_CreateGameCopyWith(
          _$_CreateGame value, $Res Function(_$_CreateGame) then) =
      __$$_CreateGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateGameCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res, _$_CreateGame>
    implements _$$_CreateGameCopyWith<$Res> {
  __$$_CreateGameCopyWithImpl(
      _$_CreateGame _value, $Res Function(_$_CreateGame) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateGame implements _CreateGame {
  const _$_CreateGame();

  @override
  String toString() {
    return 'CreateGameEvent.createGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String description) changeDescription,
    required TResult Function(String location) changeLocation,
    required TResult Function(DateTime dateAndTime) changeDateAndTime,
    required TResult Function(int cost) changeCost,
    required TResult Function(int maxPlayers) changeMaxPlayers,
    required TResult Function(GameFormats format) changeFormat,
    required TResult Function() createGame,
    required TResult Function(String gameDocID) updateGame,
  }) {
    return createGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String location)? changeLocation,
    TResult? Function(DateTime dateAndTime)? changeDateAndTime,
    TResult? Function(int cost)? changeCost,
    TResult? Function(int maxPlayers)? changeMaxPlayers,
    TResult? Function(GameFormats format)? changeFormat,
    TResult? Function()? createGame,
    TResult? Function(String gameDocID)? updateGame,
  }) {
    return createGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String description)? changeDescription,
    TResult Function(String location)? changeLocation,
    TResult Function(DateTime dateAndTime)? changeDateAndTime,
    TResult Function(int cost)? changeCost,
    TResult Function(int maxPlayers)? changeMaxPlayers,
    TResult Function(GameFormats format)? changeFormat,
    TResult Function()? createGame,
    TResult Function(String gameDocID)? updateGame,
    required TResult orElse(),
  }) {
    if (createGame != null) {
      return createGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_ChangeDateAndTime value) changeDateAndTime,
    required TResult Function(_ChangeCost value) changeCost,
    required TResult Function(_ChangeMaxPlayers value) changeMaxPlayers,
    required TResult Function(_ChangeFormat value) changeFormat,
    required TResult Function(_CreateGame value) createGame,
    required TResult Function(_UpdateGame value) updateGame,
  }) {
    return createGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_ChangeLocation value)? changeLocation,
    TResult? Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult? Function(_ChangeCost value)? changeCost,
    TResult? Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult? Function(_ChangeFormat value)? changeFormat,
    TResult? Function(_CreateGame value)? createGame,
    TResult? Function(_UpdateGame value)? updateGame,
  }) {
    return createGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult Function(_ChangeCost value)? changeCost,
    TResult Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult Function(_ChangeFormat value)? changeFormat,
    TResult Function(_CreateGame value)? createGame,
    TResult Function(_UpdateGame value)? updateGame,
    required TResult orElse(),
  }) {
    if (createGame != null) {
      return createGame(this);
    }
    return orElse();
  }
}

abstract class _CreateGame implements CreateGameEvent {
  const factory _CreateGame() = _$_CreateGame;
}

/// @nodoc
abstract class _$$_UpdateGameCopyWith<$Res> {
  factory _$$_UpdateGameCopyWith(
          _$_UpdateGame value, $Res Function(_$_UpdateGame) then) =
      __$$_UpdateGameCopyWithImpl<$Res>;
  @useResult
  $Res call({String gameDocID});
}

/// @nodoc
class __$$_UpdateGameCopyWithImpl<$Res>
    extends _$CreateGameEventCopyWithImpl<$Res, _$_UpdateGame>
    implements _$$_UpdateGameCopyWith<$Res> {
  __$$_UpdateGameCopyWithImpl(
      _$_UpdateGame _value, $Res Function(_$_UpdateGame) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameDocID = null,
  }) {
    return _then(_$_UpdateGame(
      gameDocID: null == gameDocID
          ? _value.gameDocID
          : gameDocID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateGame implements _UpdateGame {
  const _$_UpdateGame({required this.gameDocID});

  @override
  final String gameDocID;

  @override
  String toString() {
    return 'CreateGameEvent.updateGame(gameDocID: $gameDocID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateGame &&
            (identical(other.gameDocID, gameDocID) ||
                other.gameDocID == gameDocID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameDocID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateGameCopyWith<_$_UpdateGame> get copyWith =>
      __$$_UpdateGameCopyWithImpl<_$_UpdateGame>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeTitle,
    required TResult Function(String description) changeDescription,
    required TResult Function(String location) changeLocation,
    required TResult Function(DateTime dateAndTime) changeDateAndTime,
    required TResult Function(int cost) changeCost,
    required TResult Function(int maxPlayers) changeMaxPlayers,
    required TResult Function(GameFormats format) changeFormat,
    required TResult Function() createGame,
    required TResult Function(String gameDocID) updateGame,
  }) {
    return updateGame(gameDocID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeTitle,
    TResult? Function(String description)? changeDescription,
    TResult? Function(String location)? changeLocation,
    TResult? Function(DateTime dateAndTime)? changeDateAndTime,
    TResult? Function(int cost)? changeCost,
    TResult? Function(int maxPlayers)? changeMaxPlayers,
    TResult? Function(GameFormats format)? changeFormat,
    TResult? Function()? createGame,
    TResult? Function(String gameDocID)? updateGame,
  }) {
    return updateGame?.call(gameDocID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeTitle,
    TResult Function(String description)? changeDescription,
    TResult Function(String location)? changeLocation,
    TResult Function(DateTime dateAndTime)? changeDateAndTime,
    TResult Function(int cost)? changeCost,
    TResult Function(int maxPlayers)? changeMaxPlayers,
    TResult Function(GameFormats format)? changeFormat,
    TResult Function()? createGame,
    TResult Function(String gameDocID)? updateGame,
    required TResult orElse(),
  }) {
    if (updateGame != null) {
      return updateGame(gameDocID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_ChangeDateAndTime value) changeDateAndTime,
    required TResult Function(_ChangeCost value) changeCost,
    required TResult Function(_ChangeMaxPlayers value) changeMaxPlayers,
    required TResult Function(_ChangeFormat value) changeFormat,
    required TResult Function(_CreateGame value) createGame,
    required TResult Function(_UpdateGame value) updateGame,
  }) {
    return updateGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_ChangeLocation value)? changeLocation,
    TResult? Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult? Function(_ChangeCost value)? changeCost,
    TResult? Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult? Function(_ChangeFormat value)? changeFormat,
    TResult? Function(_CreateGame value)? createGame,
    TResult? Function(_UpdateGame value)? updateGame,
  }) {
    return updateGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_ChangeDateAndTime value)? changeDateAndTime,
    TResult Function(_ChangeCost value)? changeCost,
    TResult Function(_ChangeMaxPlayers value)? changeMaxPlayers,
    TResult Function(_ChangeFormat value)? changeFormat,
    TResult Function(_CreateGame value)? createGame,
    TResult Function(_UpdateGame value)? updateGame,
    required TResult orElse(),
  }) {
    if (updateGame != null) {
      return updateGame(this);
    }
    return orElse();
  }
}

abstract class _UpdateGame implements CreateGameEvent {
  const factory _UpdateGame({required final String gameDocID}) = _$_UpdateGame;

  String get gameDocID;
  @JsonKey(ignore: true)
  _$$_UpdateGameCopyWith<_$_UpdateGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateGameState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  DateTime? get dateAndTime => throw _privateConstructorUsedError;
  int get maxPlayerCount => throw _privateConstructorUsedError;
  int get minPlayerCount => throw _privateConstructorUsedError;
  List<UserModel> get players => throw _privateConstructorUsedError;
  GameFormats get format => throw _privateConstructorUsedError;
  ButtonState get buttonState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateGameStateCopyWith<CreateGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameStateCopyWith<$Res> {
  factory $CreateGameStateCopyWith(
          CreateGameState value, $Res Function(CreateGameState) then) =
      _$CreateGameStateCopyWithImpl<$Res, CreateGameState>;
  @useResult
  $Res call(
      {String title,
      String description,
      int cost,
      String location,
      DateTime? dateAndTime,
      int maxPlayerCount,
      int minPlayerCount,
      List<UserModel> players,
      GameFormats format,
      ButtonState buttonState});
}

/// @nodoc
class _$CreateGameStateCopyWithImpl<$Res, $Val extends CreateGameState>
    implements $CreateGameStateCopyWith<$Res> {
  _$CreateGameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? cost = null,
    Object? location = null,
    Object? dateAndTime = freezed,
    Object? maxPlayerCount = null,
    Object? minPlayerCount = null,
    Object? players = null,
    Object? format = null,
    Object? buttonState = null,
  }) {
    return _then(_value.copyWith(
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
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as ButtonState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateGameStateCopyWith<$Res>
    implements $CreateGameStateCopyWith<$Res> {
  factory _$$_CreateGameStateCopyWith(
          _$_CreateGameState value, $Res Function(_$_CreateGameState) then) =
      __$$_CreateGameStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      int cost,
      String location,
      DateTime? dateAndTime,
      int maxPlayerCount,
      int minPlayerCount,
      List<UserModel> players,
      GameFormats format,
      ButtonState buttonState});
}

/// @nodoc
class __$$_CreateGameStateCopyWithImpl<$Res>
    extends _$CreateGameStateCopyWithImpl<$Res, _$_CreateGameState>
    implements _$$_CreateGameStateCopyWith<$Res> {
  __$$_CreateGameStateCopyWithImpl(
      _$_CreateGameState _value, $Res Function(_$_CreateGameState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? cost = null,
    Object? location = null,
    Object? dateAndTime = freezed,
    Object? maxPlayerCount = null,
    Object? minPlayerCount = null,
    Object? players = null,
    Object? format = null,
    Object? buttonState = null,
  }) {
    return _then(_$_CreateGameState(
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
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as ButtonState,
    ));
  }
}

/// @nodoc

class _$_CreateGameState extends _CreateGameState {
  const _$_CreateGameState(
      {this.title = '',
      this.description = '',
      this.cost = 0,
      this.location = '',
      this.dateAndTime = null,
      this.maxPlayerCount = 4,
      this.minPlayerCount = 2,
      final List<UserModel> players = const [],
      this.format = GameFormats.Commander,
      this.buttonState = ButtonState.idle})
      : _players = players,
        super._();

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
  @JsonKey()
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
  @JsonKey()
  final ButtonState buttonState;

  @override
  String toString() {
    return 'CreateGameState(title: $title, description: $description, cost: $cost, location: $location, dateAndTime: $dateAndTime, maxPlayerCount: $maxPlayerCount, minPlayerCount: $minPlayerCount, players: $players, format: $format, buttonState: $buttonState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateGameState &&
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
            (identical(other.format, format) || other.format == format) &&
            (identical(other.buttonState, buttonState) ||
                other.buttonState == buttonState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      cost,
      location,
      dateAndTime,
      maxPlayerCount,
      minPlayerCount,
      const DeepCollectionEquality().hash(_players),
      format,
      buttonState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateGameStateCopyWith<_$_CreateGameState> get copyWith =>
      __$$_CreateGameStateCopyWithImpl<_$_CreateGameState>(this, _$identity);
}

abstract class _CreateGameState extends CreateGameState {
  const factory _CreateGameState(
      {final String title,
      final String description,
      final int cost,
      final String location,
      final DateTime? dateAndTime,
      final int maxPlayerCount,
      final int minPlayerCount,
      final List<UserModel> players,
      final GameFormats format,
      final ButtonState buttonState}) = _$_CreateGameState;
  const _CreateGameState._() : super._();

  @override
  String get title;
  @override
  String get description;
  @override
  int get cost;
  @override
  String get location;
  @override
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
  ButtonState get buttonState;
  @override
  @JsonKey(ignore: true)
  _$$_CreateGameStateCopyWith<_$_CreateGameState> get copyWith =>
      throw _privateConstructorUsedError;
}
