import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Trade/Trade_Model/trade_model.dart';

class CreateTradeRepo {
  CreateTradeRepo({required this.tradePost, required this.currentUser});
  final UserModel currentUser;
  final TradePostModel tradePost;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  // Future<void> sendMessage() {

  // }
  Future<void> createChat() async {
    bool chatExists = await checkForExistingChat();
    if (chatExists) {}
  }

  Future<bool> checkForExistingChat() async {
    // We check to see if there is a chat that already exists between these users
    // and if that chat is also about the same same
    return await _firebaseFirestore
        .collection('chats')
        .where('users', arrayContains: [currentUser.id, tradePost.userID])
        .where('card.id', isEqualTo: '${tradePost.cards.first.id}')
        .get()
        .then((snapshot) {
          if (snapshot.size > 0) {
            return true;
          } else {
            return false;
          }
        });
  }
}
