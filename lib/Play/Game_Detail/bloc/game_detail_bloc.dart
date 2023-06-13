import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Play/Game_Model/game_model.dart';

part 'game_detail_event.dart';
part 'game_detail_state.dart';
part 'game_detail_bloc.freezed.dart';

class GameDetailBloc extends Bloc<GameDetailEvent, GameDetailState> {
  final GameModel game;

  GameDetailBloc({required this.game}) : super(GameDetailState(game: game)) {
    on<GameDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
