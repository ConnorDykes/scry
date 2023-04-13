import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';
import 'package:scry/Trade/Trade_Offer/trade_offer_repo.dart';

part 'trade_offer_event.dart';
part 'trade_offer_state.dart';
part 'trade_offer_bloc.freezed.dart';

class TradeOfferBloc extends Bloc<TradeOfferEvent, TradeOfferState> {
  final TradeOfferRepo _offerRepo = TradeOfferRepo();
  final OfferModel offer;

  TradeOfferBloc({required this.offer}) : super(const TradeOfferState()) {
    on<_Reject>((event, emit) async {
      await showDialog(
          context: event.context,
          builder: (_) => BlocProvider<TradeOfferBloc>.value(
                value: event.context.read<TradeOfferBloc>(),
                child: AlertDialog(
                  surfaceTintColor: Colors.red,
                  title: Text('Reject Offer?'),
                  actions: [
                    TextButton(
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.pop(event.context);
                      },
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.red),
                        onPressed: () async {
                          try {
                            await _offerRepo.reject(offer: offer).then(
                                (value) => value
                                    ? Navigator.pop(event.context)
                                    : ScaffoldMessenger.of(event.context)
                                        .showSnackBar(SnackBar(
                                            content: Text(
                                                'Error Rejecting Offer, Try Again Later'))));
                          } catch (e) {
                            debugPrint(e.toString());
                          }
                        },
                        child: Text(
                          'Reject',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ));
    });

    on<_Accept>((event, emit) async {
      final theme = Theme.of(event.context);

      await showDialog(
          context: event.context,
          builder: (_) => BlocProvider<TradeOfferBloc>.value(
                value: event.context.read<TradeOfferBloc>(),
                child: BlocBuilder<TradeOfferBloc, TradeOfferState>(
                  builder: (context, state) {
                    return AlertDialog(
                      title: Text('Accept Offer?'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                              'The following message will be sent to ${offer.offeringUserName}, this trade will be moved to your messages.'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: TextEditingController(
                                  text: state.acceptMessage),
                              onChanged: (value) async {
                                _UpdateAcceptMessage(value: value);
                              },
                              maxLines: null,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(8),
                                  fillColor: theme.cardColor,
                                  filled: true,
                                  hintText: "Search Card Name",
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: theme.primaryColor),
                                      borderRadius: BorderRadius.circular(15)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: theme.dividerColor),
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                          )
                        ],
                      ),
                      actions: [
                        TextButton(
                          child: Text(
                            'Cancel',
                            style: TextStyle(color: Colors.grey),
                          ),
                          onPressed: () {
                            Navigator.pop(event.context);
                          },
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: theme.colorScheme.primary),
                            onPressed: () async {
                              try {
                                await _offerRepo
                                    .accept(
                                        offer: offer,
                                        message: state.acceptMessage)
                                    .then((value) => value
                                        ? {
                                            Navigator.pop(event.context),
                                            // ScaffoldMessenger.of(event.context)
                                            //     .showSnackBar(SnackBar(
                                            //         content: Row(
                                            //   children: [
                                            //     Icon(
                                            //       Icons
                                            //           .check_circle_outline_rounded,
                                            //       color: Colors.white,
                                            //     ),
                                            //     Expanded(
                                            //       child: Text(
                                            //           'Offer Accepted, Message Sent'),
                                            //     ),
                                            //   ],
                                            // )))
                                          }
                                        : ScaffoldMessenger.of(event.context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.red,
                                                content: Text(
                                                    'Error Sending Message, Try Again Later'))));
                              } catch (e) {
                                debugPrint(e.toString());
                              }
                            },
                            child: Text(
                              'Accept',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    );
                  },
                ),
              ));
    });
  }
}
