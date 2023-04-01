part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.updateNavBarIndex({required int value}) =
      _UpdateNavBarIndex;
}
