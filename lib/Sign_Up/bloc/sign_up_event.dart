part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.changeEmail({required String email}) = _ChangeEmail;
  const factory SignUpEvent.changePassword({required String password}) =
      _ChangePassword;
  const factory SignUpEvent.changeConfirmPassword(
      {required String confirmPassword}) = _ChangeConfirmPassword;
  const factory SignUpEvent.changeFirstName({required String firstName}) =
      _ChangeFirstName;
  const factory SignUpEvent.changeLastName({required String lastName}) =
      _ChangeLastName;
  const factory SignUpEvent.signUpWithEmailAndPassword({
    required BuildContext context,
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) = _SignUpWithEmailAndPassword;
}
