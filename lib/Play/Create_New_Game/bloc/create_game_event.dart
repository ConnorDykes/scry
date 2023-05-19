part of 'create_game_bloc.dart';

@freezed
class CreateGameEvent with _$CreateGameEvent {
  const factory CreateGameEvent.changeTitle({required String title}) =
      _ChangeTitle;
  const factory CreateGameEvent.changeDescription(
      {required String description}) = _ChangeDescription;
  const factory CreateGameEvent.changeLocation({required String location}) =
      _ChangeLocation;
  const factory CreateGameEvent.changeDateAndTime(
      {required DateTime dateAndTime}) = _ChangeDateAndTime;

  const factory CreateGameEvent.changeCost({required int cost}) = _ChangeCost;

  const factory CreateGameEvent.changeMaxPlayers({required int maxPlayers}) =
      _ChangeMaxPlayers;
  const factory CreateGameEvent.changeFormat({required GameFormats format}) =
      _ChangeFormat;
  const factory CreateGameEvent.createGame() = _CreateGame;
  const factory CreateGameEvent.updateGame({required String gameDocID}) =
      _UpdateGame;
  const factory CreateGameEvent.getCurrentLocation(
      {required BuildContext context}) = _GetCurrentLocation;
}
