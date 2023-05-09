part of 'create_trade_bloc.dart';

@freezed
class CreateTradeEvent with _$CreateTradeEvent {
  const factory CreateTradeEvent.started() = _Started;
  const factory CreateTradeEvent.search({required String query}) = _Search;
  const factory CreateTradeEvent.updateDetails({required String details}) =
      _UpdateDetails;

  const factory CreateTradeEvent.messageTapped(
      {required UserModel currentUser,
      required BuildContext context}) = _MessageTapped;
  const factory CreateTradeEvent.sendMessage({required BuildContext context}) =
      _SendMessage;

  const factory CreateTradeEvent.updateTradeType() = _UpdateTradeType;
  const factory CreateTradeEvent.selectCard({required CardModel card}) =
      _SelectCard;
  const factory CreateTradeEvent.createTrade({required UserModel user}) =
      _CreateTrade;
  const factory CreateTradeEvent.clearSelectedCard() = _ClearSelectedCard;
  const factory CreateTradeEvent.createTradeProposal() = _CreateTradeProposal;
  const factory CreateTradeEvent.clearSearch() = _ClearSearch;
  const factory CreateTradeEvent.resetState() = _ResetState;
  const factory CreateTradeEvent.deleteTrade() = _DeleteTrade;
}
