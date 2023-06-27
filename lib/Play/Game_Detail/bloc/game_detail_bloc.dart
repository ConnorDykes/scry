import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Messages/Messages_Model/message_model.dart';
import 'package:scry/Play/Game_Detail/GameChatMessageModel/game_chat_message_model.dart';
import 'package:scry/Play/Game_Detail/game_detail_repo.dart';
import 'package:scry/Play/Game_Model/game_model.dart';

part 'game_detail_event.dart';
part 'game_detail_state.dart';
part 'game_detail_bloc.freezed.dart';

class GameDetailBloc extends Bloc<GameDetailEvent, GameDetailState> {
  final GameModel game;
  final UserModel currentUser;
  final TextEditingController messageCont = TextEditingController();

  GameDetailBloc({
    required this.game,
    required this.currentUser,
  }) : super(GameDetailState(game: game)) {
    final _gameDetailRepo =
        GameDetailRepo(game: game, currentUser: currentUser);

    on<_DeleteGame>((event, emit) async {
      Navigator.pop(event.context);
      _gameDetailRepo.deleteGame();
    });

    on<_JoinGame>((event, emit) async {
      await _gameDetailRepo.joinGame();
    });

    on<_LeaveGame>((event, emit) async {
      await _gameDetailRepo.leaveGame();
    });

    on<_SendMessage>((event, emit) async {
      await _gameDetailRepo.sendMessage(
        message: event.message,
      );
      messageCont.clear();
    });
  }
}
