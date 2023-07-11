// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetState,
    required TResult Function(String email) changeEmail,
    required TResult Function(String password) changePassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function(
            BuildContext context, String email, String password)
        signinWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetState,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String password)? changePassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetState,
    TResult Function(String email)? changeEmail,
    TResult Function(String password)? changePassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetState value)? resetState,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ResetStateCopyWith<$Res> {
  factory _$$_ResetStateCopyWith(
          _$_ResetState value, $Res Function(_$_ResetState) then) =
      __$$_ResetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetStateCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_ResetState>
    implements _$$_ResetStateCopyWith<$Res> {
  __$$_ResetStateCopyWithImpl(
      _$_ResetState _value, $Res Function(_$_ResetState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetState implements _ResetState {
  const _$_ResetState();

  @override
  String toString() {
    return 'SignInEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetState,
    required TResult Function(String email) changeEmail,
    required TResult Function(String password) changePassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function(
            BuildContext context, String email, String password)
        signinWithEmailAndPassword,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetState,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String password)? changePassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetState,
    TResult Function(String email)? changeEmail,
    TResult Function(String password)? changePassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetState value)? resetState,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements SignInEvent {
  const factory _ResetState() = _$_ResetState;
}

/// @nodoc
abstract class _$$_ChangeEmailCopyWith<$Res> {
  factory _$$_ChangeEmailCopyWith(
          _$_ChangeEmail value, $Res Function(_$_ChangeEmail) then) =
      __$$_ChangeEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_ChangeEmailCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_ChangeEmail>
    implements _$$_ChangeEmailCopyWith<$Res> {
  __$$_ChangeEmailCopyWithImpl(
      _$_ChangeEmail _value, $Res Function(_$_ChangeEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_ChangeEmail(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeEmail implements _ChangeEmail {
  const _$_ChangeEmail({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SignInEvent.changeEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeEmail &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeEmailCopyWith<_$_ChangeEmail> get copyWith =>
      __$$_ChangeEmailCopyWithImpl<_$_ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetState,
    required TResult Function(String email) changeEmail,
    required TResult Function(String password) changePassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function(
            BuildContext context, String email, String password)
        signinWithEmailAndPassword,
  }) {
    return changeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetState,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String password)? changePassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
  }) {
    return changeEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetState,
    TResult Function(String email)? changeEmail,
    TResult Function(String password)? changePassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetState value)? resetState,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements SignInEvent {
  const factory _ChangeEmail({required final String email}) = _$_ChangeEmail;

  String get email;
  @JsonKey(ignore: true)
  _$$_ChangeEmailCopyWith<_$_ChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePasswordCopyWith<$Res> {
  factory _$$_ChangePasswordCopyWith(
          _$_ChangePassword value, $Res Function(_$_ChangePassword) then) =
      __$$_ChangePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_ChangePasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_ChangePassword>
    implements _$$_ChangePasswordCopyWith<$Res> {
  __$$_ChangePasswordCopyWithImpl(
      _$_ChangePassword _value, $Res Function(_$_ChangePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_ChangePassword(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.changePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePassword &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      __$$_ChangePasswordCopyWithImpl<_$_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetState,
    required TResult Function(String email) changeEmail,
    required TResult Function(String password) changePassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function(
            BuildContext context, String email, String password)
        signinWithEmailAndPassword,
  }) {
    return changePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetState,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String password)? changePassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
  }) {
    return changePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetState,
    TResult Function(String email)? changeEmail,
    TResult Function(String password)? changePassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetState value)? resetState,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements SignInEvent {
  const factory _ChangePassword({required final String password}) =
      _$_ChangePassword;

  String get password;
  @JsonKey(ignore: true)
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInWithGoogleCopyWith<$Res> {
  factory _$$_SignInWithGoogleCopyWith(
          _$_SignInWithGoogle value, $Res Function(_$_SignInWithGoogle) then) =
      __$$_SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_SignInWithGoogle>
    implements _$$_SignInWithGoogleCopyWith<$Res> {
  __$$_SignInWithGoogleCopyWithImpl(
      _$_SignInWithGoogle _value, $Res Function(_$_SignInWithGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInWithGoogle implements _SignInWithGoogle {
  const _$_SignInWithGoogle();

  @override
  String toString() {
    return 'SignInEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetState,
    required TResult Function(String email) changeEmail,
    required TResult Function(String password) changePassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function(
            BuildContext context, String email, String password)
        signinWithEmailAndPassword,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetState,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String password)? changePassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetState,
    TResult Function(String email)? changeEmail,
    TResult Function(String password)? changePassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetState value)? resetState,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements SignInEvent {
  const factory _SignInWithGoogle() = _$_SignInWithGoogle;
}

/// @nodoc
abstract class _$$_SignInWithAppleCopyWith<$Res> {
  factory _$$_SignInWithAppleCopyWith(
          _$_SignInWithApple value, $Res Function(_$_SignInWithApple) then) =
      __$$_SignInWithAppleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithAppleCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_SignInWithApple>
    implements _$$_SignInWithAppleCopyWith<$Res> {
  __$$_SignInWithAppleCopyWithImpl(
      _$_SignInWithApple _value, $Res Function(_$_SignInWithApple) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInWithApple implements _SignInWithApple {
  const _$_SignInWithApple();

  @override
  String toString() {
    return 'SignInEvent.signInWithApple()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInWithApple);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetState,
    required TResult Function(String email) changeEmail,
    required TResult Function(String password) changePassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function(
            BuildContext context, String email, String password)
        signinWithEmailAndPassword,
  }) {
    return signInWithApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetState,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String password)? changePassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
  }) {
    return signInWithApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetState,
    TResult Function(String email)? changeEmail,
    TResult Function(String password)? changePassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithApple != null) {
      return signInWithApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
  }) {
    return signInWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
  }) {
    return signInWithApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetState value)? resetState,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signInWithApple != null) {
      return signInWithApple(this);
    }
    return orElse();
  }
}

abstract class _SignInWithApple implements SignInEvent {
  const factory _SignInWithApple() = _$_SignInWithApple;
}

/// @nodoc
abstract class _$$_SignInWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_SignInWithEmailAndPasswordCopyWith(
          _$_SignInWithEmailAndPassword value,
          $Res Function(_$_SignInWithEmailAndPassword) then) =
      __$$_SignInWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String email, String password});
}

/// @nodoc
class __$$_SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_SignInWithEmailAndPassword>
    implements _$$_SignInWithEmailAndPasswordCopyWith<$Res> {
  __$$_SignInWithEmailAndPasswordCopyWithImpl(
      _$_SignInWithEmailAndPassword _value,
      $Res Function(_$_SignInWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignInWithEmailAndPassword(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInWithEmailAndPassword implements _SignInWithEmailAndPassword {
  const _$_SignInWithEmailAndPassword(
      {required this.context, required this.email, required this.password});

  @override
  final BuildContext context;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.signinWithEmailAndPassword(context: $context, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithEmailAndPassword &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInWithEmailAndPasswordCopyWith<_$_SignInWithEmailAndPassword>
      get copyWith => __$$_SignInWithEmailAndPasswordCopyWithImpl<
          _$_SignInWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetState,
    required TResult Function(String email) changeEmail,
    required TResult Function(String password) changePassword,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function(
            BuildContext context, String email, String password)
        signinWithEmailAndPassword,
  }) {
    return signinWithEmailAndPassword(context, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetState,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String password)? changePassword,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
  }) {
    return signinWithEmailAndPassword?.call(context, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetState,
    TResult Function(String email)? changeEmail,
    TResult Function(String password)? changePassword,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function(BuildContext context, String email, String password)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signinWithEmailAndPassword != null) {
      return signinWithEmailAndPassword(context, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithApple value) signInWithApple,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailAndPassword,
  }) {
    return signinWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithApple value)? signInWithApple,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
  }) {
    return signinWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetState value)? resetState,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithApple value)? signInWithApple,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (signinWithEmailAndPassword != null) {
      return signinWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPassword implements SignInEvent {
  const factory _SignInWithEmailAndPassword(
      {required final BuildContext context,
      required final String email,
      required final String password}) = _$_SignInWithEmailAndPassword;

  BuildContext get context;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignInWithEmailAndPasswordCopyWith<_$_SignInWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  String get error => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  ButtonState get buttonState => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {String error,
      String email,
      String password,
      ButtonState buttonState,
      UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? email = null,
    Object? password = null,
    Object? buttonState = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as ButtonState,
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
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      String email,
      String password,
      ButtonState buttonState,
      UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInState>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? email = null,
    Object? password = null,
    Object? buttonState = null,
    Object? user = null,
  }) {
    return _then(_$_SignInState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as ButtonState,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_SignInState extends _SignInState {
  const _$_SignInState(
      {this.error = '',
      this.email = '',
      this.password = '',
      this.buttonState = ButtonState.idle,
      this.user = UserModel.empty})
      : super._();

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final ButtonState buttonState;
  @override
  @JsonKey()
  final UserModel user;

  @override
  String toString() {
    return 'SignInState(error: $error, email: $email, password: $password, buttonState: $buttonState, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.buttonState, buttonState) ||
                other.buttonState == buttonState) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, email, password, buttonState, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState extends SignInState {
  const factory _SignInState(
      {final String error,
      final String email,
      final String password,
      final ButtonState buttonState,
      final UserModel user}) = _$_SignInState;
  const _SignInState._() : super._();

  @override
  String get error;
  @override
  String get email;
  @override
  String get password;
  @override
  ButtonState get buttonState;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
