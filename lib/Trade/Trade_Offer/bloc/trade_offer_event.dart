part of 'trade_offer_bloc.dart';

@freezed
class TradeOfferEvent with _$TradeOfferEvent {
  const factory TradeOfferEvent.started() = _Started;
}