import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scry/Authentication/user_model.dart';

import '../Services/push_notification_service.dart';

class AuthRepo {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> updateFCMToken(
      {required String userID, required String token}) async {
    try {
      await _firebaseFirestore
          .collection('users')
          .doc(userID)
          .update({'fcmToken': token});
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Stream<DocumentSnapshot> streamUser({required String userID}) {
    return _firebaseFirestore.collection('users').doc(userID).snapshots();
  }

  Future getUser({required String userID}) async {
    try {
      return await _firebaseFirestore.collection('users').doc(userID).get();
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<UserCredential> signUpWithEmailandPass(
      {required String email, required String password}) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await PushNotificationService().getToken().then((token) =>
          updateFCMToken(userID: userCredential.user!.uid, token: token!));

      return userCredential;
    } on FirebaseAuthException catch (e) {
      debugPrint(e.code);
      throw signUpWithEmailAndPasswordFailureFromCode(e.code);
    }
  }

  Future<UserCredential> signUpWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);

        final userCredential =
            await _firebaseAuth.signInWithCredential(authCredential);

        //Update Firestore user doc with FCM Token
        await PushNotificationService().getToken().then((token) =>
            updateFCMToken(userID: userCredential.user!.uid, token: token!));

        // Getting users credential
        return userCredential;
      }
      throw 'Null error with Google Sign-In';
    } on FirebaseAuthException catch (e) {
      throw logInWithGoogleFailureFromCode(e.code);
    }
  }

  Future<UserCredential> signInWithEmailandPass(
      {required String email, required String password}) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      //Update Firestore user doc with FCM Token
      await PushNotificationService().getToken().then((token) =>
          updateFCMToken(userID: userCredential.user!.uid, token: token!));

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw signUpWithEmailAndPasswordFailureFromCode(e.code);
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);

        final userCredential =
            await _firebaseAuth.signInWithCredential(authCredential);

        //Update Firestore user doc with FCM Token
        await PushNotificationService().getToken().then((token) =>
            updateFCMToken(userID: userCredential.user!.uid, token: token!));

        // Getting users credential
        return userCredential;
      }
      throw 'Null error with Google Sign-In';
    } on FirebaseAuthException catch (e) {
      throw logInWithGoogleFailureFromCode(e.code);
    }
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  Future<void> createUser({required UserModel user}) async {
    await _firebaseFirestore
        .collection('users')
        .doc(user.id)
        .set(user.toJson());
  }

  String logInWithEmailAndPasswordFailureFromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return 'Email is not valid or badly formatted.';
      case 'user-disabled':
        return 'This user has been disabled. Please contact support for help.';
      case 'user-not-found':
        return 'Email is not found, please create an account.';
      case 'wrong-password':
        return 'Incorrect password, please try again.';
      default:
        return code;
    }
  }

  String logInWithGoogleFailureFromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        return 'Account exists with different credentials.';
      case 'invalid-credential':
        return 'The credential received is malformed or has expired.';
      case 'operation-not-allowed':
        return 'Operation is not allowed.  Please contact support.';
      case 'user-disabled':
        return 'This user has been disabled. Please contact support for help.';
      case 'user-not-found':
        return 'Email is not found, please create an account.';
      case 'wrong-password':
        return 'Incorrect password, please try again.';
      case 'invalid-verification-code':
        return 'The credential verification code received is invalid.';
      case 'invalid-verification-id':
        return 'The credential verification ID received is invalid.';
      default:
        return 'Error, try again later.';
    }
  }

  String signUpWithEmailAndPasswordFailureFromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return 'Email is not valid or badly formatted.';
      case 'user-disabled':
        return 'This user has been disabled. Please contact support for help.';
      case 'email-already-in-use':
        return 'An account already exists for that email.';
      case 'operation-not-allowed':
        return 'Operation is not allowed.  Please contact support.';
      case 'weak-password':
        return 'Please enter a stronger password.';
      default:
        return code;
    }
  }
}
