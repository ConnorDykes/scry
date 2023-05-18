import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Play/Create_New_Game/create_game_repository.dart';
import 'package:scry/Play/Game_Model/game_model.dart';
import 'package:scry/Play/Game_Model/game_types.dart';

part 'create_game_event.dart';
part 'create_game_state.dart';
part 'create_game_bloc.freezed.dart';

class CreateGameBloc extends Bloc<CreateGameEvent, CreateGameState> {
  final createGameRepo = CreateGameRepo();

  CreateGameBloc() : super(CreateGameState()) {
    on<_ChangeTitle>((event, emit) {
      emit(state.copyWith(title: event.title));
    });
    on<_ChangeDescription>((event, emit) {
      emit(state.copyWith(description: event.description));
    });
    on<_ChangeLocation>((event, emit) {
      emit(state.copyWith(location: event.location));
    });
    on<_ChangeCost>((event, emit) {
      emit(state.copyWith(cost: event.cost));
    });

    on<_ChangeMaxPlayers>((event, emit) {
      emit(state.copyWith(maxPlayerCount: event.maxPlayers));
    });

    on<_ChangeFormat>((event, emit) {
      emit(state.copyWith(format: event.format));
    });
    on<_CreateGame>((event, emit) async {
      emit(state.copyWith(buttonState: ButtonState.loading));

      GameModel game = GameModel(
          title: state.title,
          description: state.description,
          cost: state.cost,
          location: state.location,
          maxPlayerCount: state.maxPlayerCount,
          minPlayerCount: state.minPlayerCount,
          players: state.players,
          format: state.format);

      try {
        await createGameRepo.createGame(game: game);
        emit(state.copyWith(buttonState: ButtonState.success));
      } catch (e) {
        emit(state.copyWith(buttonState: ButtonState.fail));
      }

      //upload to firebase then emit button success and pop view
    });

    on<_UpdateGame>((event, emit) async {
      emit(state.copyWith(buttonState: ButtonState.loading));

      GameModel game = GameModel(
          title: state.title,
          description: state.description,
          cost: state.cost,
          location: state.location,
          maxPlayerCount: state.maxPlayerCount,
          minPlayerCount: state.minPlayerCount,
          players: state.players,
          format: state.format);

      try {
        await createGameRepo.updateGame(game: game, gameDocID: event.gameDocID);
        emit(state.copyWith(buttonState: ButtonState.success));
      } catch (e) {
        emit(state.copyWith(buttonState: ButtonState.fail));
      }

      //upload to firebase then emit button success and pop view
    });
  }
}
