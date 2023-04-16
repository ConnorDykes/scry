part of 'create_trade_bloc.dart';

@freezed
class CreateTradeState with _$CreateTradeState {
  const CreateTradeState._();

  const factory CreateTradeState({
    @Default('') String uploadError,
    @Default('') String queryString,
    @Default('') String details,
    @Default('') String message,
    @Default([]) List<CardModel> cards,
    @Default([]) List<CardModel> selectedCards,
    @Default(ButtonState.idle) ButtonState buttonState,
    @Default(LoadStatus.initial) LoadStatus cardLoadStatus,
    @Default(true) bool lookingFor,
    @Default(false) bool willingToTrade,
  }) = _CreateTradeState;
}
