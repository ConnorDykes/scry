part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();

  const factory SignInState({
    @Default('') String emailError,
  }) = _SignInState;
}
