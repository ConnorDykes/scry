part of 'game_detail_bloc.dart';

@freezed
class GameDetailEvent with _$GameDetailEvent {
  const factory GameDetailEvent.started() = _Started;
}