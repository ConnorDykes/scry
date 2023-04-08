part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();

  const factory SignInState(
      {@Default('') String error,
      @Default('') String email,
      @Default('') String password,
      @Default(ButtonState.idle) ButtonState buttonState,
      @Default(UserModel.empty) UserModel user}) = _SignInState;

  get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  get isPasswordValid => password.length >= 6;

  get isFromValid => isEmailValid && isPasswordValid;
}
