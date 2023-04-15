import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Messages/Chat_Model/chat_model.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatModel chat;
  final TextEditingController newMessageController = TextEditingController();

  ChatBloc({required this.chat}) : super(ChatState()) {
    on<_UpdateMessage>((event, emit) {
      emit(state.copyWith(newMessage: event.value));
    });
  }
}
