import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:scry/Authentication/user_model.dart';

class ProfileRepo {
  ProfileRepo({required this.user});

  final UserModel user;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> updateUser(UserModel user) async {
    try {
      await _firebaseFirestore
          .collection('users')
          .doc(user.id)
          .update(user.toJson());
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<bool> updateProfilePhotoUrl(String url) async {
    try {
      await _firebaseFirestore
          .collection('users')
          .doc(user.id)
          .update({'profilePicture': url});
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<bool> deleteFirestoreUser() async {
    try {
      await _firebaseFirestore.collection('users').doc(user.id).delete();
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<bool> deleteFirebaseAuthUser() async {
    try {
      await _firebaseAuth.currentUser!.delete();
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      await _firebaseAuth.signOut();
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
