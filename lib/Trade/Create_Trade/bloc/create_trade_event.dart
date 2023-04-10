part of 'create_trade_bloc.dart';

@freezed
class CreateTradeEvent with _$CreateTradeEvent {
  const factory CreateTradeEvent.started() = _Started;
  const factory CreateTradeEvent.search({required String query}) = _Search;
  const factory CreateTradeEvent.updateDetails({required String details}) =
      _UpdateDetails;
  const factory CreateTradeEvent.selectCard({required CardModel card}) =
      _SelectCard;
  const factory CreateTradeEvent.createTrade({required UserModel user}) =
      _CreateTrade;
  const factory CreateTradeEvent.clearSelectedCard() = _ClearSelectedCard;
  const factory CreateTradeEvent.createTradeProposal() = _CreateTradeProposal;
  const factory CreateTradeEvent.clearSearch() = _ClearSearch;
  const factory CreateTradeEvent.resetState() = _ResetState;
}