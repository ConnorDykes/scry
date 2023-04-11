import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';

part 'trade_offer_event.dart';
part 'trade_offer_state.dart';
part 'trade_offer_bloc.freezed.dart';

class TradeOfferBloc extends Bloc<TradeOfferEvent, TradeOfferState> {
  TradeOfferBloc() : super(const TradeOfferState()) {
    on<TradeOfferEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
