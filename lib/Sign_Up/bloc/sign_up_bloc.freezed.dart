// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) changeEmail,
    required TResult Function(bool value) acceptTerms,
    required TResult Function(String password) changePassword,
    required TResult Function(String confirmPassword) changeConfirmPassword,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(BuildContext context, String email,
            String password, String firstName, String lastName)
        signUpWithEmailAndPassword,
    required TResult Function(BuildContext context) signUpWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(bool value)? acceptTerms,
    TResult? Function(String password)? changePassword,
    TResult? Function(String confirmPassword)? changeConfirmPassword,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult? Function(BuildContext context)? signUpWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(bool value)? acceptTerms,
    TResult Function(String password)? changePassword,
    TResult Function(String confirmPassword)? changeConfirmPassword,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult Function(BuildContext context)? signUpWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AcceptTerms value) acceptTerms,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeConfirmPassword value)
        changeConfirmPassword,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_AcceptTerms value)? acceptTerms,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(_SignUpWithGoogle value)? signUpWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AcceptTerms value)? acceptTerms,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

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
    extends _$SignUpEventCopyWithImpl<$Res, _$_ChangeEmail>
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
    return 'SignUpEvent.changeEmail(email: $email)';
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
    required TResult Function(bool value) acceptTerms,
    required TResult Function(String password) changePassword,
    required TResult Function(String confirmPassword) changeConfirmPassword,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(BuildContext context, String email,
            String password, String firstName, String lastName)
        signUpWithEmailAndPassword,
    required TResult Function(BuildContext context) signUpWithGoogle,
  }) {
    return changeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(bool value)? acceptTerms,
    TResult? Function(String password)? changePassword,
    TResult? Function(String confirmPassword)? changeConfirmPassword,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult? Function(BuildContext context)? signUpWithGoogle,
  }) {
    return changeEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(bool value)? acceptTerms,
    TResult Function(String password)? changePassword,
    TResult Function(String confirmPassword)? changeConfirmPassword,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult Function(BuildContext context)? signUpWithGoogle,
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
    required TResult Function(_AcceptTerms value) acceptTerms,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeConfirmPassword value)
        changeConfirmPassword,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_AcceptTerms value)? acceptTerms,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(_SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AcceptTerms value)? acceptTerms,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements SignUpEvent {
  const factory _ChangeEmail({required final String email}) = _$_ChangeEmail;

  String get email;
  @JsonKey(ignore: true)
  _$$_ChangeEmailCopyWith<_$_ChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptTermsCopyWith<$Res> {
  factory _$$_AcceptTermsCopyWith(
          _$_AcceptTerms value, $Res Function(_$_AcceptTerms) then) =
      __$$_AcceptTermsCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$_AcceptTermsCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_AcceptTerms>
    implements _$$_AcceptTermsCopyWith<$Res> {
  __$$_AcceptTermsCopyWithImpl(
      _$_AcceptTerms _value, $Res Function(_$_AcceptTerms) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AcceptTerms(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AcceptTerms implements _AcceptTerms {
  const _$_AcceptTerms({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'SignUpEvent.acceptTerms(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptTerms &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptTermsCopyWith<_$_AcceptTerms> get copyWith =>
      __$$_AcceptTermsCopyWithImpl<_$_AcceptTerms>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) changeEmail,
    required TResult Function(bool value) acceptTerms,
    required TResult Function(String password) changePassword,
    required TResult Function(String confirmPassword) changeConfirmPassword,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(BuildContext context, String email,
            String password, String firstName, String lastName)
        signUpWithEmailAndPassword,
    required TResult Function(BuildContext context) signUpWithGoogle,
  }) {
    return acceptTerms(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(bool value)? acceptTerms,
    TResult? Function(String password)? changePassword,
    TResult? Function(String confirmPassword)? changeConfirmPassword,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult? Function(BuildContext context)? signUpWithGoogle,
  }) {
    return acceptTerms?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(bool value)? acceptTerms,
    TResult Function(String password)? changePassword,
    TResult Function(String confirmPassword)? changeConfirmPassword,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult Function(BuildContext context)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (acceptTerms != null) {
      return acceptTerms(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AcceptTerms value) acceptTerms,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeConfirmPassword value)
        changeConfirmPassword,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return acceptTerms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_AcceptTerms value)? acceptTerms,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(_SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return acceptTerms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AcceptTerms value)? acceptTerms,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (acceptTerms != null) {
      return acceptTerms(this);
    }
    return orElse();
  }
}

abstract class _AcceptTerms implements SignUpEvent {
  const factory _AcceptTerms({required final bool value}) = _$_AcceptTerms;

  bool get value;
  @JsonKey(ignore: true)
  _$$_AcceptTermsCopyWith<_$_AcceptTerms> get copyWith =>
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
    extends _$SignUpEventCopyWithImpl<$Res, _$_ChangePassword>
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
    return 'SignUpEvent.changePassword(password: $password)';
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
    required TResult Function(bool value) acceptTerms,
    required TResult Function(String password) changePassword,
    required TResult Function(String confirmPassword) changeConfirmPassword,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(BuildContext context, String email,
            String password, String firstName, String lastName)
        signUpWithEmailAndPassword,
    required TResult Function(BuildContext context) signUpWithGoogle,
  }) {
    return changePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(bool value)? acceptTerms,
    TResult? Function(String password)? changePassword,
    TResult? Function(String confirmPassword)? changeConfirmPassword,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult? Function(BuildContext context)? signUpWithGoogle,
  }) {
    return changePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(bool value)? acceptTerms,
    TResult Function(String password)? changePassword,
    TResult Function(String confirmPassword)? changeConfirmPassword,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult Function(BuildContext context)? signUpWithGoogle,
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
    required TResult Function(_AcceptTerms value) acceptTerms,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeConfirmPassword value)
        changeConfirmPassword,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_AcceptTerms value)? acceptTerms,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(_SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AcceptTerms value)? acceptTerms,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements SignUpEvent {
  const factory _ChangePassword({required final String password}) =
      _$_ChangePassword;

  String get password;
  @JsonKey(ignore: true)
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeConfirmPasswordCopyWith<$Res> {
  factory _$$_ChangeConfirmPasswordCopyWith(_$_ChangeConfirmPassword value,
          $Res Function(_$_ChangeConfirmPassword) then) =
      __$$_ChangeConfirmPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$_ChangeConfirmPasswordCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_ChangeConfirmPassword>
    implements _$$_ChangeConfirmPasswordCopyWith<$Res> {
  __$$_ChangeConfirmPasswordCopyWithImpl(_$_ChangeConfirmPassword _value,
      $Res Function(_$_ChangeConfirmPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$_ChangeConfirmPassword(
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeConfirmPassword implements _ChangeConfirmPassword {
  const _$_ChangeConfirmPassword({required this.confirmPassword});

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SignUpEvent.changeConfirmPassword(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeConfirmPassword &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeConfirmPasswordCopyWith<_$_ChangeConfirmPassword> get copyWith =>
      __$$_ChangeConfirmPasswordCopyWithImpl<_$_ChangeConfirmPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) changeEmail,
    required TResult Function(bool value) acceptTerms,
    required TResult Function(String password) changePassword,
    required TResult Function(String confirmPassword) changeConfirmPassword,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(BuildContext context, String email,
            String password, String firstName, String lastName)
        signUpWithEmailAndPassword,
    required TResult Function(BuildContext context) signUpWithGoogle,
  }) {
    return changeConfirmPassword(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(bool value)? acceptTerms,
    TResult? Function(String password)? changePassword,
    TResult? Function(String confirmPassword)? changeConfirmPassword,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult? Function(BuildContext context)? signUpWithGoogle,
  }) {
    return changeConfirmPassword?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(bool value)? acceptTerms,
    TResult Function(String password)? changePassword,
    TResult Function(String confirmPassword)? changeConfirmPassword,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult Function(BuildContext context)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (changeConfirmPassword != null) {
      return changeConfirmPassword(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AcceptTerms value) acceptTerms,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeConfirmPassword value)
        changeConfirmPassword,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return changeConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_AcceptTerms value)? acceptTerms,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(_SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return changeConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AcceptTerms value)? acceptTerms,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (changeConfirmPassword != null) {
      return changeConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class _ChangeConfirmPassword implements SignUpEvent {
  const factory _ChangeConfirmPassword(
      {required final String confirmPassword}) = _$_ChangeConfirmPassword;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$_ChangeConfirmPasswordCopyWith<_$_ChangeConfirmPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeFirstNameCopyWith<$Res> {
  factory _$$_ChangeFirstNameCopyWith(
          _$_ChangeFirstName value, $Res Function(_$_ChangeFirstName) then) =
      __$$_ChangeFirstNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$_ChangeFirstNameCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_ChangeFirstName>
    implements _$$_ChangeFirstNameCopyWith<$Res> {
  __$$_ChangeFirstNameCopyWithImpl(
      _$_ChangeFirstName _value, $Res Function(_$_ChangeFirstName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$_ChangeFirstName(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeFirstName implements _ChangeFirstName {
  const _$_ChangeFirstName({required this.firstName});

  @override
  final String firstName;

  @override
  String toString() {
    return 'SignUpEvent.changeFirstName(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeFirstName &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeFirstNameCopyWith<_$_ChangeFirstName> get copyWith =>
      __$$_ChangeFirstNameCopyWithImpl<_$_ChangeFirstName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) changeEmail,
    required TResult Function(bool value) acceptTerms,
    required TResult Function(String password) changePassword,
    required TResult Function(String confirmPassword) changeConfirmPassword,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(BuildContext context, String email,
            String password, String firstName, String lastName)
        signUpWithEmailAndPassword,
    required TResult Function(BuildContext context) signUpWithGoogle,
  }) {
    return changeFirstName(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(bool value)? acceptTerms,
    TResult? Function(String password)? changePassword,
    TResult? Function(String confirmPassword)? changeConfirmPassword,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult? Function(BuildContext context)? signUpWithGoogle,
  }) {
    return changeFirstName?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(bool value)? acceptTerms,
    TResult Function(String password)? changePassword,
    TResult Function(String confirmPassword)? changeConfirmPassword,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult Function(BuildContext context)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (changeFirstName != null) {
      return changeFirstName(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AcceptTerms value) acceptTerms,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeConfirmPassword value)
        changeConfirmPassword,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return changeFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_AcceptTerms value)? acceptTerms,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(_SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return changeFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AcceptTerms value)? acceptTerms,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (changeFirstName != null) {
      return changeFirstName(this);
    }
    return orElse();
  }
}

abstract class _ChangeFirstName implements SignUpEvent {
  const factory _ChangeFirstName({required final String firstName}) =
      _$_ChangeFirstName;

  String get firstName;
  @JsonKey(ignore: true)
  _$$_ChangeFirstNameCopyWith<_$_ChangeFirstName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeLastNameCopyWith<$Res> {
  factory _$$_ChangeLastNameCopyWith(
          _$_ChangeLastName value, $Res Function(_$_ChangeLastName) then) =
      __$$_ChangeLastNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$_ChangeLastNameCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_ChangeLastName>
    implements _$$_ChangeLastNameCopyWith<$Res> {
  __$$_ChangeLastNameCopyWithImpl(
      _$_ChangeLastName _value, $Res Function(_$_ChangeLastName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = null,
  }) {
    return _then(_$_ChangeLastName(
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeLastName implements _ChangeLastName {
  const _$_ChangeLastName({required this.lastName});

  @override
  final String lastName;

  @override
  String toString() {
    return 'SignUpEvent.changeLastName(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLastName &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLastNameCopyWith<_$_ChangeLastName> get copyWith =>
      __$$_ChangeLastNameCopyWithImpl<_$_ChangeLastName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) changeEmail,
    required TResult Function(bool value) acceptTerms,
    required TResult Function(String password) changePassword,
    required TResult Function(String confirmPassword) changeConfirmPassword,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(BuildContext context, String email,
            String password, String firstName, String lastName)
        signUpWithEmailAndPassword,
    required TResult Function(BuildContext context) signUpWithGoogle,
  }) {
    return changeLastName(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(bool value)? acceptTerms,
    TResult? Function(String password)? changePassword,
    TResult? Function(String confirmPassword)? changeConfirmPassword,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult? Function(BuildContext context)? signUpWithGoogle,
  }) {
    return changeLastName?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(bool value)? acceptTerms,
    TResult Function(String password)? changePassword,
    TResult Function(String confirmPassword)? changeConfirmPassword,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult Function(BuildContext context)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (changeLastName != null) {
      return changeLastName(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AcceptTerms value) acceptTerms,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeConfirmPassword value)
        changeConfirmPassword,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return changeLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_AcceptTerms value)? acceptTerms,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(_SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return changeLastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AcceptTerms value)? acceptTerms,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (changeLastName != null) {
      return changeLastName(this);
    }
    return orElse();
  }
}

abstract class _ChangeLastName implements SignUpEvent {
  const factory _ChangeLastName({required final String lastName}) =
      _$_ChangeLastName;

  String get lastName;
  @JsonKey(ignore: true)
  _$$_ChangeLastNameCopyWith<_$_ChangeLastName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_SignUpWithEmailAndPasswordCopyWith(
          _$_SignUpWithEmailAndPassword value,
          $Res Function(_$_SignUpWithEmailAndPassword) then) =
      __$$_SignUpWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String email,
      String password,
      String firstName,
      String lastName});
}

/// @nodoc
class __$$_SignUpWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_SignUpWithEmailAndPassword>
    implements _$$_SignUpWithEmailAndPasswordCopyWith<$Res> {
  __$$_SignUpWithEmailAndPasswordCopyWithImpl(
      _$_SignUpWithEmailAndPassword _value,
      $Res Function(_$_SignUpWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$_SignUpWithEmailAndPassword(
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
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpWithEmailAndPassword implements _SignUpWithEmailAndPassword {
  const _$_SignUpWithEmailAndPassword(
      {required this.context,
      required this.email,
      required this.password,
      required this.firstName,
      required this.lastName});

  @override
  final BuildContext context;
  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'SignUpEvent.signUpWithEmailAndPassword(context: $context, email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpWithEmailAndPassword &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, email, password, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpWithEmailAndPasswordCopyWith<_$_SignUpWithEmailAndPassword>
      get copyWith => __$$_SignUpWithEmailAndPasswordCopyWithImpl<
          _$_SignUpWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) changeEmail,
    required TResult Function(bool value) acceptTerms,
    required TResult Function(String password) changePassword,
    required TResult Function(String confirmPassword) changeConfirmPassword,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(BuildContext context, String email,
            String password, String firstName, String lastName)
        signUpWithEmailAndPassword,
    required TResult Function(BuildContext context) signUpWithGoogle,
  }) {
    return signUpWithEmailAndPassword(
        context, email, password, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(bool value)? acceptTerms,
    TResult? Function(String password)? changePassword,
    TResult? Function(String confirmPassword)? changeConfirmPassword,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult? Function(BuildContext context)? signUpWithGoogle,
  }) {
    return signUpWithEmailAndPassword?.call(
        context, email, password, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(bool value)? acceptTerms,
    TResult Function(String password)? changePassword,
    TResult Function(String confirmPassword)? changeConfirmPassword,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult Function(BuildContext context)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(
          context, email, password, firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AcceptTerms value) acceptTerms,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeConfirmPassword value)
        changeConfirmPassword,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return signUpWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_AcceptTerms value)? acceptTerms,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(_SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return signUpWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AcceptTerms value)? acceptTerms,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPassword != null) {
      return signUpWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithEmailAndPassword implements SignUpEvent {
  const factory _SignUpWithEmailAndPassword(
      {required final BuildContext context,
      required final String email,
      required final String password,
      required final String firstName,
      required final String lastName}) = _$_SignUpWithEmailAndPassword;

  BuildContext get context;
  String get email;
  String get password;
  String get firstName;
  String get lastName;
  @JsonKey(ignore: true)
  _$$_SignUpWithEmailAndPasswordCopyWith<_$_SignUpWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpWithGoogleCopyWith<$Res> {
  factory _$$_SignUpWithGoogleCopyWith(
          _$_SignUpWithGoogle value, $Res Function(_$_SignUpWithGoogle) then) =
      __$$_SignUpWithGoogleCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_SignUpWithGoogleCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$_SignUpWithGoogle>
    implements _$$_SignUpWithGoogleCopyWith<$Res> {
  __$$_SignUpWithGoogleCopyWithImpl(
      _$_SignUpWithGoogle _value, $Res Function(_$_SignUpWithGoogle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_SignUpWithGoogle(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_SignUpWithGoogle implements _SignUpWithGoogle {
  const _$_SignUpWithGoogle({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SignUpEvent.signUpWithGoogle(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpWithGoogle &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpWithGoogleCopyWith<_$_SignUpWithGoogle> get copyWith =>
      __$$_SignUpWithGoogleCopyWithImpl<_$_SignUpWithGoogle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) changeEmail,
    required TResult Function(bool value) acceptTerms,
    required TResult Function(String password) changePassword,
    required TResult Function(String confirmPassword) changeConfirmPassword,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(BuildContext context, String email,
            String password, String firstName, String lastName)
        signUpWithEmailAndPassword,
    required TResult Function(BuildContext context) signUpWithGoogle,
  }) {
    return signUpWithGoogle(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? changeEmail,
    TResult? Function(bool value)? acceptTerms,
    TResult? Function(String password)? changePassword,
    TResult? Function(String confirmPassword)? changeConfirmPassword,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult? Function(BuildContext context)? signUpWithGoogle,
  }) {
    return signUpWithGoogle?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    TResult Function(bool value)? acceptTerms,
    TResult Function(String password)? changePassword,
    TResult Function(String confirmPassword)? changeConfirmPassword,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(BuildContext context, String email, String password,
            String firstName, String lastName)?
        signUpWithEmailAndPassword,
    TResult Function(BuildContext context)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signUpWithGoogle != null) {
      return signUpWithGoogle(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AcceptTerms value) acceptTerms,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeConfirmPassword value)
        changeConfirmPassword,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_SignUpWithEmailAndPassword value)
        signUpWithEmailAndPassword,
    required TResult Function(_SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return signUpWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_AcceptTerms value)? acceptTerms,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult? Function(_SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return signUpWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AcceptTerms value)? acceptTerms,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeConfirmPassword value)? changeConfirmPassword,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_SignUpWithEmailAndPassword value)?
        signUpWithEmailAndPassword,
    TResult Function(_SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signUpWithGoogle != null) {
      return signUpWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithGoogle implements SignUpEvent {
  const factory _SignUpWithGoogle({required final BuildContext context}) =
      _$_SignUpWithGoogle;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_SignUpWithGoogleCopyWith<_$_SignUpWithGoogle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  ButtonState get buttonState => throw _privateConstructorUsedError;
  String get emailError => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  bool get termsAccepted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {ButtonState buttonState,
      String emailError,
      String email,
      String password,
      String confirmPassword,
      String firstName,
      String lastName,
      UserModel user,
      bool termsAccepted});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonState = null,
    Object? emailError = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? user = null,
    Object? termsAccepted = null,
  }) {
    return _then(_value.copyWith(
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as ButtonState,
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      termsAccepted: null == termsAccepted
          ? _value.termsAccepted
          : termsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ButtonState buttonState,
      String emailError,
      String email,
      String password,
      String confirmPassword,
      String firstName,
      String lastName,
      UserModel user,
      bool termsAccepted});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_SignUpState>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonState = null,
    Object? emailError = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? user = null,
    Object? termsAccepted = null,
  }) {
    return _then(_$_SignUpState(
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as ButtonState,
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      termsAccepted: null == termsAccepted
          ? _value.termsAccepted
          : termsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignUpState extends _SignUpState {
  const _$_SignUpState(
      {this.buttonState = ButtonState.idle,
      this.emailError = '',
      this.email = '',
      this.password = '',
      this.confirmPassword = '',
      this.firstName = '',
      this.lastName = '',
      this.user = UserModel.empty,
      this.termsAccepted = false})
      : super._();

  @override
  @JsonKey()
  final ButtonState buttonState;
  @override
  @JsonKey()
  final String emailError;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final UserModel user;
  @override
  @JsonKey()
  final bool termsAccepted;

  @override
  String toString() {
    return 'SignUpState(buttonState: $buttonState, emailError: $emailError, email: $email, password: $password, confirmPassword: $confirmPassword, firstName: $firstName, lastName: $lastName, user: $user, termsAccepted: $termsAccepted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            (identical(other.buttonState, buttonState) ||
                other.buttonState == buttonState) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.termsAccepted, termsAccepted) ||
                other.termsAccepted == termsAccepted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buttonState, emailError, email,
      password, confirmPassword, firstName, lastName, user, termsAccepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState extends SignUpState {
  const factory _SignUpState(
      {final ButtonState buttonState,
      final String emailError,
      final String email,
      final String password,
      final String confirmPassword,
      final String firstName,
      final String lastName,
      final UserModel user,
      final bool termsAccepted}) = _$_SignUpState;
  const _SignUpState._() : super._();

  @override
  ButtonState get buttonState;
  @override
  String get emailError;
  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  UserModel get user;
  @override
  bool get termsAccepted;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
