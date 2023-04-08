import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/Authentication/auth_repo.dart';
import 'package:scry/Authentication/user_model.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepo _authRepo = AuthRepo();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  SignInBloc() : super(SignInState()) {
    on<_ChangeEmail>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<_ChangePassword>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<_ResetState>((event, emit) {
      emit(state.copyWith(
          email: '', password: '', error: '', buttonState: ButtonState.idle));
    });

    on<_SignInWithEmailAndPassword>((event, emit) async {
      emit(state.copyWith(buttonState: ButtonState.loading));
      try {
        UserCredential userCredential = await _authRepo.signInWithEmailandPass(
            email: event.email, password: event.password);

        DocumentSnapshot userDoc = await _firebaseFirestore
            .collection('users')
            .doc(userCredential.user!.uid)
            .get();

        UserModel userModel =
            UserModel.fromJson(userDoc.data() as Map<String, dynamic>);

        emit(state.copyWith(
            user: userModel, error: '', buttonState: ButtonState.success));
      } catch (e) {
        emit(
            state.copyWith(buttonState: ButtonState.fail, error: e.toString()));
      }
      Future.delayed(const Duration(seconds: 1), () {
        _ResetState;
      });
    });

    on<_SignInWithGoogle>((event, emit) async {
      emit(state.copyWith(buttonState: ButtonState.loading));
      try {
        UserCredential userCredential = await _authRepo.signInWithGoogle();

        DocumentSnapshot userDoc = await _firebaseFirestore
            .collection('users')
            .doc(userCredential.user!.uid)
            .get();

        UserModel userModel =
            UserModel.fromJson(userDoc.data() as Map<String, dynamic>);

        emit(state.copyWith(
            user: userModel, error: '', buttonState: ButtonState.success));
      } catch (e) {
        emit(
            state.copyWith(buttonState: ButtonState.fail, error: e.toString()));
      }
      Future.delayed(const Duration(seconds: 1), () {
        _ResetState;
      });
    });
  }
}
