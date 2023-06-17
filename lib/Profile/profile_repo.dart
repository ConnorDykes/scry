import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/rendering.dart';
import 'package:scry/Authentication/user_model.dart';

class ProfileRepo {
  ProfileRepo({required this.user});

  final UserModel user;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

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
}
