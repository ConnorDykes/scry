import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Card_Repo/card_repository.dart';
import 'package:scry/Trade/Trade_Model/trade_model.dart';
import 'package:scry/Widgets/our_textfield.dart';
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

    on<_MessageTapped>((event, emit) async => await showDialog(
        context: event.context,
        builder: (_) => BlocProvider(
            create: (context) => event.context.read<CreateTradeBloc>(),
            child: BlocBuilder<CreateTradeBloc, CreateTradeState>(
              builder: (context, state) {
                final theme = Theme.of(context);

                return AlertDialog(
                  title: Text('Send Message'),
                  content: OurTextfield(
                    controller: TextEditingController(text: state.message),
                    onChanged: (value) {
                      debugPrint(value);
                      _UpdateMessage(message: value);
                    },
                    suffixIcon: IconButton(
                        onPressed: () {
                          _SendMessage;
                        },
                        icon: Icon(
                          CupertinoIcons.arrow_up_circle_fill,
                          color: theme.colorScheme.primary,
                        )),
                  ),
                );
              },
            ))));

    on<_SendMessage>(
      (event, emit) async {
        //* check if a chat already exists between the users with the same card id
        //*  otherwise call the repo to send message that includes the card
      },
    );

    on<_UpdateMessage>(
      (event, emit) => emit(state.copyWith(message: event.message)),
    );

    on<_UpdateTradeType>(
      (event, emit) {
        if (state.selectedCards.isEmpty) {
          emit(state.copyWith(
              lookingFor: !state.lookingFor,
              willingToTrade: !state.willingToTrade));
        } else {
          //* this method formats the text with the appropriate grammar
          String details() {
            String firstLetter =
                state.selectedCards.first.name!.trim().substring(0, 1);
            final firstThreeLetter =
                state.selectedCards.first.name!.trim().substring(0, 3);

            if (firstLetter == 'A' ||
                firstLetter == 'E' ||
                firstLetter == 'I' ||
                firstLetter == 'O' ||
                firstLetter == 'U') {
              return state.lookingFor
                  ? "I have an ${state.selectedCards.first.name} and would like to trade it."
                  : "I am looking for an ${state.selectedCards.first.name}.";
            } else if (firstThreeLetter == 'The') {
              return state.lookingFor
                  ? "I have ${state.selectedCards.first.name} and would like to trade it."
                  : "I am looking for ${state.selectedCards.first.name}.";
            } else {
              return state.lookingFor
                  ? "I have a ${state.selectedCards.first.name} and would like to trade it."
                  : "I am looking for a ${state.selectedCards.first.name}.";
            }
          }

          emit(state.copyWith(
              lookingFor: !state.lookingFor,
              willingToTrade: !state.willingToTrade,
              details: details()));
        }
      },
    );

    on<_UpdateDetails>(
        (event, emit) => emit(state.copyWith(details: event.details)));

    on<_ClearSearch>((event, emit) {
      searchController.clear();
      emit(state.copyWith(
          cards: [], cardLoadStatus: LoadStatus.initial, queryString: ''));
    });

    on<_SelectCard>((event, emit) {
      String details() {
        if (trade != TradePostModel.empty) {
          return 'Would you like to trade your ${trade.cards.first.name} for my ${event.card.name}?';
        } else {
          String firstLetter = event.card.name!.trim().substring(0, 1);
          final firstThreeLetter = event.card.name!.trim().substring(0, 3);

          if (firstLetter == 'A' ||
              firstLetter == 'E' ||
              firstLetter == 'I' ||
              firstLetter == 'O' ||
              firstLetter == 'U') {
            return !state.lookingFor
                ? "I have an ${event.card.name} and would like to trade it."
                : "I am looking for an ${event.card.name}.";
          } else if (firstThreeLetter == 'The') {
            return !state.lookingFor
                ? "I have ${event.card.name} and would like to trade it."
                : "I am looking for ${event.card.name}.";
          } else {
            return !state.lookingFor
                ? "I have a ${event.card.name} and would like to trade it."
                : "I am looking for a ${event.card.name}.";
          }
        }
      }

      searchController.clear();
      emit(state.copyWith(
          selectedCards: [...state.selectedCards, event.card],
          cards: [],
          cardLoadStatus: LoadStatus.initial,
          queryString: '',
          details: details()));
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
        'willingToTrade': state.willingToTrade,
        'lookingFor': state.lookingFor,
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
