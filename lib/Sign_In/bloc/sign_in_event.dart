part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.resetState() = _ResetState;
  const factory SignInEvent.changeEmail({required String email}) = _ChangeEmail;
  const factory SignInEvent.changePassword({required String password}) =
      _ChangePassword;
  const factory SignInEvent.signInWithGoogle() = _SignInWithGoogle;
  const factory SignInEvent.signinWithEmailAndPassword(
      {required BuildContext context,
      required String email,
      required String password}) = _SignInWithEmailAndPassword;
}
