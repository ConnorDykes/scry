part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const ChatState._();

  const factory ChatState({
    @Default('') String newMessage,
    @Default(LoadStatus.initial) LoadStatus loadStatus,
  }) = _ChatState;
}
