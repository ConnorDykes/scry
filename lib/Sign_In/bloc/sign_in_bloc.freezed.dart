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
    required TResult Function(String email) changeEmail,
    required TResult Function(String password) changePassword,
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(String password)? changePassword,
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(String password)? changePassword,
    TResult Function(String email, String password)? loginWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
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
    required TResult Function(String email) changeEmail,
    required TResult Function(String password) changePassword,
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
  }) {
    return changeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(String password)? changePassword,
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
  }) {
    return changeEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(String password)? changePassword,
    TResult Function(String email, String password)? loginWithEmailAndPassword,
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
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
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
    required TResult Function(String email) changeEmail,
    required TResult Function(String password) changePassword,
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
  }) {
    return changePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(String password)? changePassword,
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
  }) {
    return changePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(String password)? changePassword,
    TResult Function(String email, String password)? loginWithEmailAndPassword,
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
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
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
abstract class _$$_LoginWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_LoginWithEmailAndPasswordCopyWith(
          _$_LoginWithEmailAndPassword value,
          $Res Function(_$_LoginWithEmailAndPassword) then) =
      __$$_LoginWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_LoginWithEmailAndPassword>
    implements _$$_LoginWithEmailAndPasswordCopyWith<$Res> {
  __$$_LoginWithEmailAndPasswordCopyWithImpl(
      _$_LoginWithEmailAndPassword _value,
      $Res Function(_$_LoginWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginWithEmailAndPassword(
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

class _$_LoginWithEmailAndPassword implements _LoginWithEmailAndPassword {
  const _$_LoginWithEmailAndPassword(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.loginWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginWithEmailAndPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginWithEmailAndPasswordCopyWith<_$_LoginWithEmailAndPassword>
      get copyWith => __$$_LoginWithEmailAndPasswordCopyWithImpl<
          _$_LoginWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) changeEmail,
    required TResult Function(String password) changePassword,
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(String password)? changePassword,
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(String password)? changePassword,
    TResult Function(String email, String password)? loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _LoginWithEmailAndPassword implements SignInEvent {
  const factory _LoginWithEmailAndPassword(
      {required final String email,
      required final String password}) = _$_LoginWithEmailAndPassword;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginWithEmailAndPasswordCopyWith<_$_LoginWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  String get error => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  ButtonState get buttonState => throw _privateConstructorUsedError;

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
      {String error, String email, String password, ButtonState buttonState});
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
    ) as $Val);
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
      {String error, String email, String password, ButtonState buttonState});
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
    ));
  }
}

/// @nodoc

class _$_SignInState extends _SignInState {
  const _$_SignInState(
      {this.error = '',
      this.email = '',
      this.password = '',
      this.buttonState = ButtonState.idle})
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
  String toString() {
    return 'SignInState(error: $error, email: $email, password: $password, buttonState: $buttonState)';
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
                other.buttonState == buttonState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, email, password, buttonState);

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
      final ButtonState buttonState}) = _$_SignInState;
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
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
