part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();

  const factory SignUpState({
    @Default('') String emailError,
  }) = _SignUpState;
}
