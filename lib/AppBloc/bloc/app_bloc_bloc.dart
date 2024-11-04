import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Authentication/auth_repo.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Services/push_notification_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_bloc_event.dart';
part 'app_bloc_state.dart';
part 'app_bloc_bloc.freezed.dart';

class AppBloc extends Bloc<AppBlocEvent, AppBlocState> {
  final authRepo = AuthRepo();
  final iconKey = GlobalKey();
  final messageKey = GlobalKey();
  final playKey = GlobalKey();
  final profileKey = GlobalKey();
  final fabKey = GlobalKey();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  AppBloc() : super(const AppBlocState()) {
    on<_UpdateUser>((event, emit) {
      emit(state.copyWith(user: event.user));
    });

    on<_Started>((event, emit) async {
      String? userID = _firebaseAuth.currentUser?.uid;

      debugPrint("userID -----> $userID");

      await PushNotificationService().initialize();

      if (userID != null) {
        await PushNotificationService().getToken().then(
            (token) => authRepo.updateFCMToken(userID: userID, token: token!));

        // initiate stream to listen to user changes.
        await emit.forEach<DocumentSnapshot>(
          authRepo.streamUser(userID: userID),
          onData: (user) {
            final currentUser =
                UserModel.fromJson(user.data() as Map<String, dynamic>);

            debugPrint('[AppBloc]: New User Info');
            return state.copyWith(
              user: currentUser,
            );
          },
        );

        //? Maybe I don't need this anymore because i am listen to stream of user changes
      } else {
        
      }
    });

    on<_Logout>((event, emit) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      // initiate stream to listen to user changes.
      await prefs.setString('userID', '');
      await authRepo.logout();
      emit(state.copyWith(user: UserModel.empty));
    });
  }
}
