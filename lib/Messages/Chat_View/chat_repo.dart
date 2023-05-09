import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scry/Messages/Chat_Model/chat_model.dart';
import 'package:scry/Messages/Messages_Model/message_model.dart';

class ChatRepo {
  final ChatModel chat;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  ChatRepo({required ChatModel this.chat});

  Future<bool> sendMessage({required Map<String, dynamic> message}) async {
    try {
      final messageDocRef = _firebaseFirestore
          .collection('chats')
          .doc(chat.id)
          .collection('messages')
          .doc();
      final updatedMessage = message;
      updatedMessage['id'] = messageDocRef.id;
      await messageDocRef.set(updatedMessage);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
