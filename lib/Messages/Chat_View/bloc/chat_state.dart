part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const ChatState._();

  const factory ChatState({
    @Default('') String newMessage,
  }) = _ChatState;
}
