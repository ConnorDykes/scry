part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();

  const factory SignUpState({
    @Default(ButtonState.idle) ButtonState buttonState,
    @Default('') String emailError,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default(UserModel.empty) UserModel user,
  }) = _SignUpState;

  get isEmailValid => email != '';
  get isPasswordValid => password != '';
  get isPasswordConfirmValid => confirmPassword != '';
  get isFirstNameValid => firstName != '';
  get isLastNameValid => lastName != '';

  get isFromValid =>
      isEmailValid &&
      isPasswordConfirmValid &&
      isPasswordValid &&
      isFirstNameValid &&
      isLastNameValid;
}
