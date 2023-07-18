import 'dart:js_interop';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/Authentication/auth_repo.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepo _authRepo = AuthRepo();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  SignInBloc() : super(const SignInState()) {
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

        final SharedPreferences _sharedPreferences =
            await SharedPreferences.getInstance();
        _sharedPreferences.setString('userID', userCredential.user!.uid);

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

        if (userDoc.exists) {
          final SharedPreferences _sharedPreferences =
              await SharedPreferences.getInstance();
          _sharedPreferences.setString('userID', userCredential.user!.uid);

          UserModel userModel =
              UserModel.fromJson(userDoc.data() as Map<String, dynamic>);

          emit(state.copyWith(
              user: userModel, error: '', buttonState: ButtonState.success));
        } else {
          final UserModel userModel = UserModel(
              id: userCredential.user!.uid,
              displayName: userCredential.user!.displayName!,
              email: userCredential.user!.email!,
              profilePicture: userCredential.user!.photoURL!);

          await _firebaseFirestore
              .collection('users')
              .doc(userCredential.user!.uid)
              .set(userModel.toJson());

          final SharedPreferences _sharedPreferences =
              await SharedPreferences.getInstance();
          _sharedPreferences.setString('userID', userCredential.user!.uid);

          emit(state.copyWith(
              user: userModel, error: '', buttonState: ButtonState.success));
        }
      } catch (e) {
        emit(
            state.copyWith(buttonState: ButtonState.fail, error: e.toString()));
      }
      Future.delayed(const Duration(seconds: 1), () {
        _ResetState;
      });
    });

    on<_SignInWithApple>((event, emit) async {
      emit(state.copyWith(buttonState: ButtonState.loading));
      try {
        print('Getting UserCredential from Apple');
        UserCredential userCredential = await _authRepo.signUpWithAppleID();
        print("${userCredential.user!.uid}");

        DocumentReference userDocRef = _firebaseFirestore
            .collection('users')
            .doc(userCredential.user!.uid);

        // if there is user already created,then set the id in local storage and update state
        if (!userDocRef.isNull) {
          DocumentSnapshot userDoc = await userDocRef.get();
          final SharedPreferences _sharedPreferences =
              await SharedPreferences.getInstance();
          _sharedPreferences.setString('userID', userCredential.user!.uid);

          UserModel userModel =
              UserModel.fromJson(userDoc.data() as Map<String, dynamic>);

          emit(state.copyWith(
              user: userModel, error: '', buttonState: ButtonState.success));
        }
        // Otherwise create the user doc in firebase then set local storage and state
        else {
          final UserModel userModel = UserModel(
              id: userCredential.user!.uid,
              displayName: userCredential.user!.displayName!,
              email: userCredential.user!.email!,
              profilePicture: userCredential.user!.photoURL!);

          await _firebaseFirestore
              .collection('users')
              .doc(userCredential.user!.uid)
              .set(userModel.toJson());

          final SharedPreferences _sharedPreferences =
              await SharedPreferences.getInstance();
          _sharedPreferences.setString('userID', userCredential.user!.uid);

          emit(state.copyWith(
              user: userModel, error: '', buttonState: ButtonState.success));
        }
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
