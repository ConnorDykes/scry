import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/Authentication/auth_repo.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Services/push_notification_service.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final authRepo = AuthRepo();

  SignUpBloc() : super(const SignUpState()) {
    on<_AcceptTerms>((event, emit) {
      emit(state.copyWith(termsAccepted: event.value));
    });

    on<_ChangeEmail>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<_ChangePassword>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<_ChangeConfirmPassword>((event, emit) {
      emit(state.copyWith(confirmPassword: event.confirmPassword));
    });

    on<_ChangeFirstName>((event, emit) {
      emit(state.copyWith(firstName: event.firstName));
    });

    on<_ChangeLastName>((event, emit) {
      emit(state.copyWith(lastName: event.lastName));
    });

    on<_SignUpWithEmailAndPassword>((event, emit) async {
      emit(state.copyWith(buttonState: ButtonState.loading));
      try {
        UserCredential userCredential = await authRepo.signUpWithEmailandPass(
            email: state.email, password: state.password);

        UserModel user = UserModel(
            id: userCredential.user!.uid,
            email: event.email,
            password: event.password,
            firstName: event.firstName,
            lastName: event.lastName,
            profilePicture: userCredential.user?.photoURL ?? '');

        await authRepo.createUser(user: user);

        emit(state.copyWith(
            buttonState: ButtonState.success, user: user, emailError: ''));

        if (Navigator.canPop(event.context)) {
          Navigator.pop(event.context);
        }
        if (Navigator.canPop(event.context)) {
          Navigator.pop(event.context);
        }
      } catch (e) {
        emit(state.copyWith(
            buttonState: ButtonState.fail, emailError: e.toString()));
      }
    });

    on<_SignUpWithGoogle>((event, emit) async {
      emit(state.copyWith(buttonState: ButtonState.loading));
      try {
        UserCredential userCredential = await authRepo.signUpWithGoogle();

        UserModel user = UserModel(
            id: userCredential.user!.uid,
            email: '',
            password: '',
            firstName: '',
            lastName: '',
            displayName: userCredential.user?.displayName ?? '',
            profilePicture: userCredential.user?.photoURL ?? '');

        await authRepo.createUser(user: user);

        emit(state.copyWith(
            buttonState: ButtonState.success, user: user, emailError: ''));

        Navigator.pop(event.context);
      } catch (e) {
        emit(state.copyWith(
            buttonState: ButtonState.fail, emailError: e.toString()));
      }
    });

    on<_SignUpWithApple>((event, emit) async {
      emit(state.copyWith(buttonState: ButtonState.loading));
      try {
        UserCredential userCredential = await authRepo.signUpWithAppleID();

        //Update Firestore user doc with FCM Token
        final fcmToken = await PushNotificationService().getToken();

        UserModel user = UserModel(
            id: userCredential.user!.uid,
            email: '',
            password: '',
            firstName: '',
            lastName: '',
            displayName: userCredential.user?.displayName ?? '',
            profilePicture: userCredential.user?.photoURL ?? '',
            fcmToken: fcmToken ?? '');

        await authRepo.createUser(user: user);

        emit(state.copyWith(
            buttonState: ButtonState.success, user: user, emailError: ''));

        Navigator.pop(event.context);
      } catch (e) {
        emit(state.copyWith(
            buttonState: ButtonState.fail, emailError: e.toString()));
      }
    });
  }
}
