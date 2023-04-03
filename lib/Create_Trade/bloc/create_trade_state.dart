part of 'create_trade_bloc.dart';

@freezed
class CreateTradeState with _$CreateTradeState {
  const CreateTradeState._();

  const factory CreateTradeState(
          {@Default('') String queryString,
          @Default([]) List<CardModel> cards,
          @Default(CardModel.empty()) CardModel selectedCard,
          @Default(ButtonState.idle) ButtonState buttonState,
          @Default(LoadStatus.initial) LoadStatus cardLoadStatus}) =
      _CreateTradeState;
}
