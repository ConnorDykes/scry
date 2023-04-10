import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Card_Repo/card_repository.dart';
import 'package:scry/Trade/trade_model.dart';
import 'package:scry/card_model.dart';
import 'package:scry/constants.dart';

part 'create_trade_event.dart';
part 'create_trade_state.dart';
part 'create_trade_bloc.freezed.dart';

class CreateTradeBloc extends Bloc<CreateTradeEvent, CreateTradeState> {
  final cardRepo = CardRepository();
  final searchController = TextEditingController();
  final bool proposeTrade;
  final UserModel currentUser;
  final TradePostModel trade;
  CreateTradeBloc(
      {this.proposeTrade = false,
      this.currentUser = UserModel.empty,
      this.trade = TradePostModel.empty})
      : super(const CreateTradeState()) {
    on<_Search>((event, emit) async {
      emit(state.copyWith(
          cardLoadStatus: LoadStatus.loading, queryString: event.query));

      var response = await cardRepo.searchNamed(name: event.query);
      if (response != null) {
        emit(state.copyWith(
            cardLoadStatus: LoadStatus.success, cards: response));
      }
    });

    on<_UpdateDetails>(
        (event, emit) => emit(state.copyWith(details: event.details)));

    on<_ClearSearch>((event, emit) {
      searchController.clear();
      emit(state.copyWith(
          cards: [], cardLoadStatus: LoadStatus.initial, queryString: ''));
    });

    on<_SelectCard>((event, emit) {
      searchController.clear();
      emit(state.copyWith(
          selectedCards: [...state.selectedCards, event.card],
          cards: [],
          cardLoadStatus: LoadStatus.initial,
          queryString: ''));
    });
    on<_ClearSelectedCard>((event, emit) {
      debugPrint('clearSelectedCard');
      emit(state.copyWith(
        selectedCards: [],
      ));
      debugPrint(state.selectedCards.toString());
    });

    on<_CreateTradeProposal>(
      (event, emit) async {
        String name = currentUser.displayName != ''
            ? currentUser.displayName
            : currentUser.fullName;

        Map<String, dynamic> offer = {
          'details': state.details,
          'offeredCards': [...state.selectedCards.map((card) => card.toJson())],
          'offeringUserID': currentUser.id,
          'offeringUserName': name,
          'recipientUserID': trade.userID,
          'recipientName': trade.userName,
          'availableCards': [...trade.cards.map((card) => card.toJson())]
        };

        try {
          bool upload = await cardRepo.createTradeOffer(offer: offer);
          if (upload) {
            emit(state.copyWith(
              buttonState: ButtonState.success,
            ));
          } else {
            emit(state.copyWith(
                buttonState: ButtonState.fail,
                uploadError: 'Error Creating Trade Offer'));
          }
        } catch (e) {
          emit(state.copyWith(
              buttonState: ButtonState.fail, uploadError: e.toString()));
        }
      },
    );

    on<_CreateTrade>((event, emit) async {
      emit(state.copyWith(
        buttonState: ButtonState.loading,
      ));

      String name = event.user.displayName != ''
          ? event.user.displayName
          : event.user.fullName;

      Map<String, dynamic> trade = {
        'details': state.details,
        'cards': [...state.selectedCards.map((card) => card.toJson())],
        'userID': event.user.id,
        'userName': name,
        'comments': []
      };

      try {
        bool upload = await cardRepo.createTrade(trade: trade);
        if (upload) {
          emit(state.copyWith(
            buttonState: ButtonState.success,
          ));
        } else {
          emit(state.copyWith(
              buttonState: ButtonState.fail,
              uploadError: 'Error Creating Trade'));
        }
      } catch (e) {
        emit(state.copyWith(
            buttonState: ButtonState.fail, uploadError: e.toString()));
      }
    });
  }
}
