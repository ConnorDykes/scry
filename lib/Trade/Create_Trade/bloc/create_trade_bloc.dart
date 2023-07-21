import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Card_Repo/card_repository.dart';
import 'package:scry/Profile/profile_repo.dart';
import 'package:scry/Trade/Create_Trade/create_trade_repo.dart';
import 'package:scry/Trade/Trade_Model/trade_model.dart';
import 'package:scry/Widgets/our_textfield.dart';
import 'package:scry/Widgets/snackbar.dart';
import 'package:scry/card_model.dart';
import 'package:scry/constants.dart';
import 'package:url_launcher/url_launcher.dart';

part 'create_trade_event.dart';
part 'create_trade_state.dart';
part 'create_trade_bloc.freezed.dart';

class CreateTradeBloc extends Bloc<CreateTradeEvent, CreateTradeState> {
  final cardRepo = CardRepository();

  final searchController = TextEditingController();
  final messageController = TextEditingController();
  final bool proposeTrade;
  final UserModel currentUser;
  final TradePostModel trade;

  CreateTradeBloc(
      {this.proposeTrade = false,
      this.currentUser = UserModel.empty,
      this.trade = TradePostModel.empty})
      : super(const CreateTradeState()) {
    final CreateTradeRepo _createTradeRepo =
        CreateTradeRepo(tradePost: trade, currentUser: currentUser);

    on<_Search>((event, emit) async {
      emit(state.copyWith(
          cardLoadStatus: LoadStatus.loading, queryString: event.query));

      var response = await cardRepo.searchNamed(name: event.query);
      if (response != null) {
        emit(state.copyWith(
            cardLoadStatus: LoadStatus.success, cards: response));
      }
    });

    on<_MessageTapped>((event, emit) async =>
        CreateTradeRepo(currentUser: event.currentUser, tradePost: trade)
            .checkForExistingChat()
            .then(
          (exists) async {
            !exists
                ? await showDialog(
                    context: event.context,
                    builder: (_) => BlocProvider(
                        create: (context) =>
                            event.context.read<CreateTradeBloc>(),
                        child: BlocBuilder<CreateTradeBloc, CreateTradeState>(
                          builder: (context, state) {
                            debugPrint(
                                "Message Tapped current user is ${currentUser.id}");
                            final theme = Theme.of(context);

                            return AlertDialog(
                              title: Text('Send Message'),
                              content: OurTextfield(
                                controller: messageController,
                                onChanged: (value) {},
                                suffixIcon: IconButton(
                                    onPressed: () async {
                                      try {
                                        final messageStatus =
                                            await CreateTradeRepo(
                                                    currentUser:
                                                        event.currentUser,
                                                    tradePost: trade)
                                                .sendMessage(
                                                    message:
                                                        messageController.text);
                                        if (messageStatus) {
                                          if (Navigator.canPop(event.context)) {
                                            Navigator.pop(event.context);
                                          }

                                          OurSnackbar.success(
                                                  message: 'Message Sent')
                                              .show(context: event.context);
                                        } else {
                                          emit(state.copyWith(
                                              messageError:
                                                  'Error Sending Message'));
                                        }
                                      } catch (e) {
                                        debugPrint(e.toString());
                                        emit(state.copyWith(
                                            messageError: e.toString()));
                                      }
                                    },
                                    icon: Icon(
                                      CupertinoIcons.arrow_up_circle_fill,
                                      color: theme.colorScheme.primary,
                                    )),
                              ),
                            );
                          },
                        )))
                : await showDialog(
                    context: event.context,
                    builder: (_) => AlertDialog(
                          title: Text('Converation Already Exists'),
                          content: Text('Go to Messages to view.'),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(event.context);
                                },
                                child: Text(
                                  'Dismiss',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ))
                          ],
                        ));
          },
        ));

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
          selectedCards: [event.card],
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
            : currentUser.name;

        Map<String, dynamic> offer = {
          'details': state.details,
          'offeredCards': [...state.selectedCards.map((card) => card.toJson())],
          'offeringUserID': currentUser.id,
          'offeringUserName': name,
          'recipientUserID': trade.userID,
          'recipientName': trade.userName,
          'availableCards': [...trade.cards.map((card) => card.toJson())],
          'createdAt': DateTime.now().millisecondsSinceEpoch
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
          : event.user.name;

      Map<String, dynamic> trade = {
        'details': state.details,
        'cards': [...state.selectedCards.map((card) => card.toJson())],
        'userID': event.user.id,
        'userName': name,
        'willingToTrade': state.willingToTrade,
        'lookingFor': state.lookingFor,
        'createdAt': DateTime.now().millisecondsSinceEpoch
      };

      try {
        bool upload = await _createTradeRepo.createTrade(trade: trade);
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

    on<_DeleteTrade>((event, emit) async {
      _createTradeRepo.deleteTrade();
    });

    on<_ReportTrade>((event, emit) async {
      String subject = '[Scry] : *ADD SUBJECT HERE*';
      String body = '[ID: ${event.trade.id}]\n*Do not remove this ID*';
      final Uri emailLaunchUri = Uri(
          scheme: 'mailto',
          path: 'connormdykes@gmail.com',
          query: 'subject=$subject&body=$body');
      await launchUrl(emailLaunchUri);

      ScaffoldMessenger.of(event.context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Content Reported',
            style: TextStyle(color: Colors.white),
          )));
      Navigator.pop(event.context);
    });

    on<_UpdateProfilePhotoUrl>((event, emit) async {
      try {
        bool upload = await ProfileRepo(user: currentUser)
            .updateProfilePhotoUrl(event.url);
        if (upload) {
          emit(state.copyWith(
            buttonState: ButtonState.success,
          ));
          Future.delayed(const Duration(seconds: 1), () {
            Navigator.pop(event.context); // Prints after 1 second.
          });
        } else {
          emit(state.copyWith(
              buttonState: ButtonState.fail,
              uploadError: 'Error Uploading url'));
        }
      } catch (e) {
        emit(state.copyWith(
            buttonState: ButtonState.fail, uploadError: e.toString()));
      }
    });
  }
}
