part of 'trade_offer_bloc.dart';

@freezed
class TradeOfferEvent with _$TradeOfferEvent {
  const factory TradeOfferEvent.reject({required BuildContext context}) =
      _Reject;
  const factory TradeOfferEvent.accept({required BuildContext context}) =
      _Accept;
  const factory TradeOfferEvent.removeOffer({required BuildContext context}) =
      _RemoveOffer;
  const factory TradeOfferEvent.updateAcceptMessage({required String value}) =
      _UpdateAcceptMessage;
}
