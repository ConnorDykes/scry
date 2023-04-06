// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppBlocEvent {
  UserModel get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUser value) updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateUser value)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppBlocEventCopyWith<AppBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBlocEventCopyWith<$Res> {
  factory $AppBlocEventCopyWith(
          AppBlocEvent value, $Res Function(AppBlocEvent) then) =
      _$AppBlocEventCopyWithImpl<$Res, AppBlocEvent>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$AppBlocEventCopyWithImpl<$Res, $Val extends AppBlocEvent>
    implements $AppBlocEventCopyWith<$Res> {
  _$AppBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateUserCopyWith<$Res>
    implements $AppBlocEventCopyWith<$Res> {
  factory _$$_UpdateUserCopyWith(
          _$_UpdateUser value, $Res Function(_$_UpdateUser) then) =
      __$$_UpdateUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UpdateUserCopyWithImpl<$Res>
    extends _$AppBlocEventCopyWithImpl<$Res, _$_UpdateUser>
    implements _$$_UpdateUserCopyWith<$Res> {
  __$$_UpdateUserCopyWithImpl(
      _$_UpdateUser _value, $Res Function(_$_UpdateUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_UpdateUser(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_UpdateUser implements _UpdateUser {
  const _$_UpdateUser({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AppBlocEvent.updateUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserCopyWith<_$_UpdateUser> get copyWith =>
      __$$_UpdateUserCopyWithImpl<_$_UpdateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) updateUser,
  }) {
    return updateUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? updateUser,
  }) {
    return updateUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateUser value)? updateUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateUser implements AppBlocEvent {
  const factory _UpdateUser({required final UserModel user}) = _$_UpdateUser;

  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserCopyWith<_$_UpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppBlocState {
  UserModel get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppBlocStateCopyWith<AppBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBlocStateCopyWith<$Res> {
  factory $AppBlocStateCopyWith(
          AppBlocState value, $Res Function(AppBlocState) then) =
      _$AppBlocStateCopyWithImpl<$Res, AppBlocState>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$AppBlocStateCopyWithImpl<$Res, $Val extends AppBlocState>
    implements $AppBlocStateCopyWith<$Res> {
  _$AppBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppBlocStateCopyWith<$Res>
    implements $AppBlocStateCopyWith<$Res> {
  factory _$$_AppBlocStateCopyWith(
          _$_AppBlocState value, $Res Function(_$_AppBlocState) then) =
      __$$_AppBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AppBlocStateCopyWithImpl<$Res>
    extends _$AppBlocStateCopyWithImpl<$Res, _$_AppBlocState>
    implements _$$_AppBlocStateCopyWith<$Res> {
  __$$_AppBlocStateCopyWithImpl(
      _$_AppBlocState _value, $Res Function(_$_AppBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_AppBlocState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_AppBlocState extends _AppBlocState {
  const _$_AppBlocState({this.user = UserModel.empty}) : super._();

  @override
  @JsonKey()
  final UserModel user;

  @override
  String toString() {
    return 'AppBlocState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppBlocState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppBlocStateCopyWith<_$_AppBlocState> get copyWith =>
      __$$_AppBlocStateCopyWithImpl<_$_AppBlocState>(this, _$identity);
}

abstract class _AppBlocState extends AppBlocState {
  const factory _AppBlocState({final UserModel user}) = _$_AppBlocState;
  const _AppBlocState._() : super._();

  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$_AppBlocStateCopyWith<_$_AppBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
