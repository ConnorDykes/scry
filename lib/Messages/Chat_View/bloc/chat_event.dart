part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.updateMessage({required String value}) =
      _UpdateMessage;
}
