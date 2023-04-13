part of 'trade_offer_bloc.dart';

@freezed
class TradeOfferState with _$TradeOfferState {
  const TradeOfferState._();

  const factory TradeOfferState(
      {@Default(OfferModel.empty)
          OfferModel offer,
      @Default('I accept your offer, how would you like to exchange cards?')
          String acceptMessage}) = _TradeOfferState;
}
