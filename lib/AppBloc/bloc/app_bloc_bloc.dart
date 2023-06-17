import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Authentication/auth_repo.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_bloc_event.dart';
part 'app_bloc_state.dart';
part 'app_bloc_bloc.freezed.dart';

class AppBlocBloc extends Bloc<AppBlocEvent, AppBlocState> {
  final authRepo = AuthRepo();
  final iconKey = GlobalKey();
  final messageKey = GlobalKey();
  final playKey = GlobalKey();
  final profileKey = GlobalKey();
  final fabKey = GlobalKey();

  AppBlocBloc() : super(const AppBlocState()) {
    on<_UpdateUser>((event, emit) {
      emit(state.copyWith(user: event.user));
    });

    on<_Started>((event, emit) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      // initiate stream to listen to user changes.
      String? userID = prefs.getString('userID');

      debugPrint("userID -----> $userID");

      if (userID != null) {
        await emit.forEach<DocumentSnapshot>(
          authRepo.streamUser(userID: userID),
          onData: (user) {
            final currentUser =
                UserModel.fromJson(user.data() as Map<String, dynamic>);

            debugPrint('[AppBloc: New User Info');
            return state.copyWith(
              user: currentUser,
            );
          },
        );

        DocumentSnapshot userDoc = await authRepo.getUser(userID: userID);
        final UserModel user =
            UserModel.fromJson(userDoc.data() as Map<String, dynamic>);
        emit(state.copyWith(user: user));
      }
    });

    on<_Logout>((event, emit) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      // initiate stream to listen to user changes.
      prefs.setString('userID', '');
      authRepo.logout();
      emit(state.copyWith(user: UserModel.empty));
    });
  }
}
