import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Messages/Chat_Model/chat_model.dart';
import 'package:scry/Messages/Chat_View/chat_repo.dart';
import 'package:scry/Messages/Messages_Model/message_model.dart';
import 'package:scry/card_model.dart';
import 'package:scry/constants.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatModel chat;
  final TextEditingController newMessageController = TextEditingController();
  final UserModel currentUser;

  ChatBloc({required this.chat, required this.currentUser})
      : super(const ChatState()) {
    on<_UpdateMessage>((event, emit) {
      emit(state.copyWith(newMessage: event.value));
      debugPrint(state.newMessage);
    });

    on<_SendMessage>((event, emit) async {
      final time = DateTime.now().millisecondsSinceEpoch;

      final Map<String, dynamic> message = {
        'message': state.newMessage,
        'sendingUserID': currentUser.id,
        'isRead': false,
        'sendingUsername': currentUser.displayName != ''
            ? currentUser.displayName
            : currentUser.name,
        'receivingUserID': chat.offer.offeringUserID,
        'receivingUsername': chat.offer.offeringUserName,
        'createDateInMillisecondsSinceEpoch': time,
        if (event.card != null) 'card': event.card!.toJson()
      };

      await ChatRepo(
        chat: chat,
      ).sendMessage(message: message).then((value) async => value
          ? {
              newMessageController.clear(),
              emit(state.copyWith(
                  newMessage: '', loadStatus: LoadStatus.success)),
            }
          : emit(state.copyWith(loadStatus: LoadStatus.failure)));
      await Future.delayed(const Duration(milliseconds: 2000), () {
        emit(state.copyWith(newMessage: '', loadStatus: LoadStatus.initial));
      });
    });
  }
}
