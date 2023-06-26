// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() deleteAccount,
    required TResult Function(BuildContext context) editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? deleteAccount,
    TResult? Function(BuildContext context)? editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? deleteAccount,
    TResult Function(BuildContext context)? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Logout value) logout,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_EditProfile value) editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Logout value)? logout,
    TResult? Function(_DeleteAccount value)? deleteAccount,
    TResult? Function(_EditProfile value)? editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Logout value)? logout,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'ProfileEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() deleteAccount,
    required TResult Function(BuildContext context) editProfile,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? deleteAccount,
    TResult? Function(BuildContext context)? editProfile,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? deleteAccount,
    TResult Function(BuildContext context)? editProfile,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Logout value) logout,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Logout value)? logout,
    TResult? Function(_DeleteAccount value)? deleteAccount,
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Logout value)? logout,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements ProfileEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_DeleteAccountCopyWith<$Res> {
  factory _$$_DeleteAccountCopyWith(
          _$_DeleteAccount value, $Res Function(_$_DeleteAccount) then) =
      __$$_DeleteAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteAccountCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_DeleteAccount>
    implements _$$_DeleteAccountCopyWith<$Res> {
  __$$_DeleteAccountCopyWithImpl(
      _$_DeleteAccount _value, $Res Function(_$_DeleteAccount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteAccount implements _DeleteAccount {
  const _$_DeleteAccount();

  @override
  String toString() {
    return 'ProfileEvent.deleteAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() deleteAccount,
    required TResult Function(BuildContext context) editProfile,
  }) {
    return deleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? deleteAccount,
    TResult? Function(BuildContext context)? editProfile,
  }) {
    return deleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? deleteAccount,
    TResult Function(BuildContext context)? editProfile,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Logout value) logout,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Logout value)? logout,
    TResult? Function(_DeleteAccount value)? deleteAccount,
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Logout value)? logout,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccount implements ProfileEvent {
  const factory _DeleteAccount() = _$_DeleteAccount;
}

/// @nodoc
abstract class _$$_EditProfileCopyWith<$Res> {
  factory _$$_EditProfileCopyWith(
          _$_EditProfile value, $Res Function(_$_EditProfile) then) =
      __$$_EditProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_EditProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_EditProfile>
    implements _$$_EditProfileCopyWith<$Res> {
  __$$_EditProfileCopyWithImpl(
      _$_EditProfile _value, $Res Function(_$_EditProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_EditProfile(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_EditProfile implements _EditProfile {
  const _$_EditProfile({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ProfileEvent.editProfile(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfile &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditProfileCopyWith<_$_EditProfile> get copyWith =>
      __$$_EditProfileCopyWithImpl<_$_EditProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function() deleteAccount,
    required TResult Function(BuildContext context) editProfile,
  }) {
    return editProfile(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function()? deleteAccount,
    TResult? Function(BuildContext context)? editProfile,
  }) {
    return editProfile?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function()? deleteAccount,
    TResult Function(BuildContext context)? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Logout value) logout,
    required TResult Function(_DeleteAccount value) deleteAccount,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return editProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Logout value)? logout,
    TResult? Function(_DeleteAccount value)? deleteAccount,
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return editProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Logout value)? logout,
    TResult Function(_DeleteAccount value)? deleteAccount,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(this);
    }
    return orElse();
  }
}

abstract class _EditProfile implements ProfileEvent {
  const factory _EditProfile({required final BuildContext context}) =
      _$_EditProfile;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_EditProfileCopyWith<_$_EditProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  UserModel get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_ProfileState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_ProfileState extends _ProfileState {
  const _$_ProfileState({required this.user}) : super._();

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  const factory _ProfileState({required final UserModel user}) =
      _$_ProfileState;
  const _ProfileState._() : super._();

  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
