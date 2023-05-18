part of 'create_game_bloc.dart';

@freezed
class CreateGameState with _$CreateGameState {
  const CreateGameState._();

  const factory CreateGameState({
    @Default('') String title,
    @Default('') String description,
    @Default(0.00) double cost,
    @Default('') String location,
    @Default(4) int maxPlayerCount,
    @Default(2) int minPlayerCount,
    @Default([]) List<UserModel> players,
    @Default(GameFormats.Commander) GameFormats format,
    @Default(ButtonState.idle) ButtonState buttonState,
  }) = _CreateGameState;
}
