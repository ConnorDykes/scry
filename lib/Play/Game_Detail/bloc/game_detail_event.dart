part of 'game_detail_bloc.dart';

@freezed
class GameDetailEvent with _$GameDetailEvent {
  const factory GameDetailEvent.started() = _Started;
  const factory GameDetailEvent.deleteGame({required BuildContext context}) =
      _DeleteGame;
  const factory GameDetailEvent.joinGame() = _JoinGame;
  const factory GameDetailEvent.leaveGame() = _LeaveGame;
  const factory GameDetailEvent.sendMessage(
      {required GameChatMessageModel message}) = _SendMessage;
}
