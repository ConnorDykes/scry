import 'package:cached_network_image/cached_network_image.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Trade/Create_Trade/bloc/create_trade_bloc.dart';
import 'package:scry/Trade/Create_Trade/create_trade_view.dart';
import 'package:scry/card_model.dart';
import 'package:scry/constants.dart';

class SelectProfilePhoto extends StatefulWidget {
  const SelectProfilePhoto({super.key});

  @override
  State<SelectProfilePhoto> createState() => _SelectProfilePhotoState();
}

class _SelectProfilePhotoState extends State<SelectProfilePhoto> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<CreateTradeBloc>();

    return BlocBuilder<CreateTradeBloc, CreateTradeState>(
        builder: (context, state) {
      return Scaffold(
        body: Column(children: [
          SearchCardTextField(),
          if (state.cardLoadStatus == LoadStatus.loading &&
              bloc.state.queryString.isNotEmpty) ...{
            const Center(
              child: CircularProgressIndicator(),
            )
          } else if (state.cardLoadStatus == LoadStatus.success &&
              bloc.state.queryString != '') ...{
            if (state.cards.isEmpty) ...{
              const Text('No Cards Found')
            } else ...{
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: state.cards.length,
                  itemBuilder: (context, index) {
                    CardModel card = state.cards[index];
                    final imageSmall = card.imageUris?.small ?? '';
                    final imageNormal = card.imageUris?.normal ?? '';
                    final frontImageSmall =
                        card.cardFaces?.first.imageUris?['small'] ?? '';

                    final frontImageNormal =
                        card.cardFaces?.first.imageUris?['normal'] ?? '';
                    final backImageNormal =
                        card.cardFaces?[1].imageUris?['normal'] ?? '';

                    return ListTile(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                            child: Text(
                                          'Tap Card to Flip',
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(color: Colors.white),
                                        )),
                                        IconButton.filled(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(Icons.close))
                                      ],
                                    ),
                                    imageNormal.isNotEmpty
                                        ? ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            child: Image.network(
                                              imageNormal,
                                              errorBuilder: (context, error,
                                                      stackTrace) =>
                                                  Icon(
                                                Icons.photo,
                                                size: 80,
                                                color: Colors.white,
                                              ),
                                            ))
                                        : Stack(
                                            children: [
                                              FlipCard(
                                                flipOnTouch: true,
                                                front: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                    child: Image.network(
                                                        frontImageNormal)),
                                                back: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                    child: Image.network(
                                                        backImageNormal)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 150.0),
                                                child: IgnorePointer(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      IgnorePointer(
                                                        child: CircleAvatar(
                                                          radius: 30,
                                                          backgroundColor: theme
                                                              .primaryColor
                                                              .withOpacity(.6),
                                                          child: IgnorePointer(
                                                            child: IconButton(
                                                                iconSize: 40,
                                                                onPressed:
                                                                    () {},
                                                                icon: Icon(Icons
                                                                    .autorenew)),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FilledButton(
                                          onPressed: () {
                                            bloc.add(
                                                CreateTradeEvent.selectCard(
                                                    card: card));
                                            Navigator.pop(context);
                                          },
                                          child: const Text('Select')),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      shape: const RoundedRectangleBorder(),
                      leading: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: imageSmall == ''
                            ? Image.network(
                                frontImageSmall,
                              )
                            : Image.network(
                                imageSmall,
                              ),
                      ),
                      title: Text(card.name ?? ''),
                      trailing: const Icon(Icons.chevron_right_rounded),
                    );
                  },
                ),
              ),
            }
          } else if (state.cardLoadStatus == LoadStatus.initial ||
              bloc.state.queryString == '') ...{
            if (state.selectedCards.isNotEmpty) ...{
              Spacer(),
              const ProfilePictureMockup(),
              Spacer(),
              ProgressButton.icon(
                  iconedButtons: {
                    ButtonState.idle: IconedButton(
                        text: 'Save',
                        icon: const Icon(Icons.save_alt_rounded,
                            color: Colors.white),
                        color: theme.colorScheme.primary),
                    ButtonState.loading: IconedButton(
                        text: "Loading", color: theme.colorScheme.secondary),
                    ButtonState.fail: IconedButton(
                        text: "Failed",
                        icon: const Icon(Icons.cancel, color: Colors.white),
                        color: Colors.red.shade300),
                    ButtonState.success: IconedButton(
                        text: "Success",
                        icon: const Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        color: Colors.green.shade400)
                  },
                  onPressed: () {
                    bloc.add(CreateTradeEvent.updateProfilePhotoUrl(
                        context: context,
                        url: state.selectedCards.first.imageUris!.artCrop ??
                            ''));
                  },
                  state: state.buttonState),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  'This will replace your currect photo and cannot be undone',
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  state.uploadError,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              Spacer(),
            } else ...{
              Spacer(),
              CircleAvatar(
                backgroundColor: theme.colorScheme.primary,
                radius: 150,
                child: CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.white,
                  child: Text(
                    'Select a card to use the artwork as your profile photo',
                    style: theme.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Spacer(),
              // RichText(
              //   textAlign: TextAlign.center,
              //   text: TextSpan(children: [
              //     TextSpan(
              //         text: " Sign in with Google\n",
              //         style: theme.textTheme.titleLarge!
              //             .copyWith(color: theme.colorScheme.primary),
              //         recognizer: TapGestureRecognizer()
              //           ..onTap = () {
              //            // add google account linking
              //           }),
              //     TextSpan(text: "to use your profile picture"),
              //   ], style: theme.textTheme.bodyLarge),
              // ),
              Spacer(),
              Spacer()
            },
          }
        ]),
      );
    });
  }
}

class ProfilePictureMockup extends StatelessWidget {
  const ProfilePictureMockup({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<CreateTradeBloc, CreateTradeState>(
      builder: (context, state) {
        return CircleAvatar(
          backgroundColor: theme.colorScheme.primary,
          radius: 150,
          child: CircleAvatar(
            radius: 147,
            backgroundColor: Colors.white,
            backgroundImage: CachedNetworkImageProvider(
                state.selectedCards.first.imageUris!.artCrop ?? ''),
          ),
        );
      },
    );
  }
}
