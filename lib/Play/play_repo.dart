import 'package:cloud_firestore/cloud_firestore.dart';

class PlayRepo {
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  GamesStream() {
    return _firebaseFirestore
        .collection('games')
        .where('dateAndTime', isLessThan: DateTime.now())
        .snapshots();
  }
}
