import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scry/Authentication/user_model.dart';

class PlayRepo {
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  AvailableGamesStream() {
    return _firebaseFirestore
        .collection('games')
        .where('dateAndTime', isGreaterThan: DateTime.now())
        .snapshots();
  }
}
