part of 'game_detail_bloc.dart';

@freezed
class GameDetailState with _$GameDetailState {
  const factory GameDetailState({
    required GameModel game,
  }) = _GameDetailState;
}
