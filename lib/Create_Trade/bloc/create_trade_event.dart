part of 'create_trade_bloc.dart';

@freezed
class CreateTradeEvent with _$CreateTradeEvent {
  const factory CreateTradeEvent.started() = _Started;
  const factory CreateTradeEvent.search({required String query}) = _Search;
  const factory CreateTradeEvent.selectCard({required CardModel card}) =
      _SelectCard;
  const factory CreateTradeEvent.clearSelectedCard() = _ClearSelectedCard;
  const factory CreateTradeEvent.clearSearch() = _ClearSearch;
}
