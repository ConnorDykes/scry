import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Card_Repo/card_repository.dart';
import 'package:scry/card_model.dart';
import 'package:scry/constants.dart';

part 'create_trade_event.dart';
part 'create_trade_state.dart';
part 'create_trade_bloc.freezed.dart';

class CreateTradeBloc extends Bloc<CreateTradeEvent, CreateTradeState> {
  final cardRepo = CardRepository();
  final searchController = TextEditingController();
  CreateTradeBloc() : super(const CreateTradeState()) {
    on<_Search>((event, emit) async {
      emit(state.copyWith(
        cardLoadStatus: LoadStatus.loading,
      ));

      var response = await cardRepo.searchNamed(name: event.query);
      if (response != null) {
        emit(state.copyWith(
            cardLoadStatus: LoadStatus.success, cards: response));
      }
    });

    on<_ClearSearch>((event, emit) {
      searchController.clear();
      emit(state.copyWith(
          cards: [], cardLoadStatus: LoadStatus.initial, queryString: ''));
    });

    on<_SelectCard>((event, emit) {
      searchController.clear();
      emit(state.copyWith(
          selectedCard: event.card,
          cards: [],
          cardLoadStatus: LoadStatus.initial,
          queryString: ''));
    });
    on<_ClearSelectedCard>((event, emit) {
      debugPrint('clearSelectedCard');
      emit(state.copyWith(
        selectedCard: const CardModel.empty(),
      ));
      debugPrint(state.selectedCard.toString());
    });
  }
}
