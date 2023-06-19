import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Messages/Chat_Model/chat_model.dart';
import 'package:scry/Messages/Chat_View/bloc/chat_bloc.dart';
import 'package:scry/Messages/Messages_Model/message_model.dart';
import 'package:scry/Messages/message_widget.dart';
import 'package:scry/Trade/Create_Trade/bloc/create_trade_bloc.dart';
import 'package:scry/Trade/Create_Trade/create_trade_view.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';
import 'package:scry/Widgets/our_textfield.dart';
import 'package:scry/Widgets/user_tile.dart';
import 'package:scry/card_dialog.dart';
import 'package:scry/card_model.dart';
import 'package:scry/constants.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key, required this.chat});

  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBloc = context.read<AppBloc>();
    final currentUser = appBloc.state.user;
    final ScrollController scrollController = ScrollController();

    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              if (chat.offer != OfferModel.empty ||
                  chat.card != CardModel.empty()) ...{
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 2,
                        type: MaterialType.transparency,
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 1.0),
                            color: theme.cardColor,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(500.0),
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                  color: theme.colorScheme.primary,
                                  Icons.chevron_left_rounded),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: OfferPanel(
                            chat: chat,
                          )),
                    )
                  ],
                )
              } else ...{
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Material(
                        elevation: 2,
                        type: MaterialType.transparency,
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 1.0),
                            color: theme.cardColor,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(500.0),
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                  color: theme.colorScheme.primary,
                                  Icons.chevron_left_rounded),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              },
              StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('chats')
                      .doc(chat.id)
                      .collection('messages')
                      .orderBy('createDateInMillisecondsSinceEpoch')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (!snapshot.hasData ||
                        snapshot.data!.docs.isEmpty) {
                      return Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('No Messages'),
                          ],
                        ),
                      );
                    } else if (snapshot.hasData &&
                        snapshot.data!.docs.isNotEmpty) {
                      final docs = snapshot.data!.docs;
                      SchedulerBinding.instance.addPostFrameCallback((_) {
                        scrollController
                            .jumpTo(scrollController.position.maxScrollExtent);
                      });

                      return Expanded(
                        child: ListView.builder(
                            controller: scrollController,
                            itemCount: docs.length,
                            itemBuilder: (context, index) {
                              MessageModel message = MessageModel.fromJson(
                                  docs[index].data() as Map<String, dynamic>);
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: MessageWidget(
                                  isCurrentUser:
                                      message.sendingUserID == currentUser.id,
                                  message: message,
                                  userName: message.sendingUsername,
                                ),
                              );
                            }),
                      );
                    } else {
                      return Text('ERROR');
                    }
                  }),
              BlocProvider(
                create: (context) =>
                    ChatBloc(chat: chat, currentUser: currentUser),
                child: BlocListener<ChatBloc, ChatState>(
                  listener: (context, state) {
                    if (state.loadStatus == LoadStatus.success ||
                        state.loadStatus == LoadStatus.failure) {}
                  },
                  child: BlocBuilder<ChatBloc, ChatState>(
                    builder: (context, state) {
                      final chatBloc = context.read<ChatBloc>();

                      sendIcon(
                        LoadStatus loadStatus,
                      ) {
                        switch (loadStatus) {
                          case LoadStatus.initial:
                            return IconButton(
                              onPressed: () =>
                                  chatBloc.add(ChatEvent.sendMessage()),
                              icon: Icon(
                                CupertinoIcons.arrow_up_circle_fill,
                                color: theme.colorScheme.primary,
                              ),
                            );
                          case LoadStatus.success:
                            return IconButton(
                              onPressed: () =>
                                  chatBloc.add(ChatEvent.sendMessage()),
                              icon: Icon(
                                CupertinoIcons.checkmark_alt_circle,
                                color: theme.colorScheme.primary,
                              ),
                            );
                          case LoadStatus.failure:
                            return IconButton(
                              onPressed: () =>
                                  chatBloc.add(ChatEvent.sendMessage()),
                              icon: Icon(
                                CupertinoIcons.clear_circled,
                                color: theme.colorScheme.error,
                              ),
                            );
                          default:
                            Icon(
                              CupertinoIcons.arrow_up_circle_fill,
                              color: theme.colorScheme.primary,
                            );
                        }
                      }

                      return Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: OurTextfield(
                                controller: chatBloc.newMessageController,
                                onChanged: (value) {
                                  chatBloc.add(
                                      ChatEvent.updateMessage(value: value));
                                },
                                hintText: 'Message',
                                suffixIcon: state.newMessage == ''
                                    ? null
                                    : sendIcon(state.loadStatus),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (_) => FractionallySizedBox(
                                      heightFactor: .9,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                          child: SendCardView()))).then((card) {
                                if (card != null) {
                                  chatBloc
                                      .add(ChatEvent.sendMessage(card: card));
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Container(
                                height: 45,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary
                                        .withOpacity(.5),
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                        width: 1,
                                        color: theme.colorScheme.primary)),
                                child: Image.asset(
                                  'assets/magic_logo.png',
                                  height: 30,
                                  width: 20,
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class OfferPanel extends StatefulWidget {
  const OfferPanel({super.key, required this.chat});

  final ChatModel chat;

  @override
  State<OfferPanel> createState() => _OfferPanelState();
}

class _OfferPanelState extends State<OfferPanel> {
  final isOpen = [true];

  @override
  Widget build(BuildContext context) {
    final chat = widget.chat;
    final theme = Theme.of(context);
    bool isOffer = chat.offer != OfferModel.empty;
    final appBloc = context.read<AppBloc>().state;
    final otherUserID = chat.users
        .where(
          (element) => element != appBloc.user.id,
        )
        .first;

    return Card(
        clipBehavior: Clip.hardEdge,
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isOffer ? 'Offer' : "Card",
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: theme.colorScheme.primary),
                ),
              ],
            ),
            children: [
              Column(
                children: [
                  if (isOffer)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          child: UserTile(
                              userID: otherUserID,
                              userName: chat.offer.offeringUserName ?? ''),
                        ),
                      ],
                    ),
                  isOffer
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              GestureDetector(
                                onTap: () => showDialog(
                                  context: context,
                                  builder: (context) => CardDialog(
                                      card: chat.offer.offeredCards.first),
                                ),
                                child: Container(
                                  height: 100,
                                  child: Image.network(chat.offer.offeredCards
                                          .first.imageUris?.small ??
                                      ''),
                                ),
                              ),
                              Icon(Icons.arrow_forward),
                              GestureDetector(
                                onTap: () => showDialog(
                                  context: context,
                                  builder: (context) => CardDialog(
                                      card: chat.offer.availableCards.first),
                                ),
                                child: Container(
                                  height: 100,
                                  child: Image.network(chat.offer.availableCards
                                          .first.imageUris?.small ??
                                      ''),
                                ),
                              ),
                            ])
                      : GestureDetector(
                          onTap: () => showDialog(
                            context: context,
                            builder: (context) => CardDialog(card: chat.card),
                          ),
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4)),
                            height: 150,
                            child: Image.network(
                                chat.card.imageUris?.normal ?? ''),
                          ),
                        ),
                  Padding(
                    padding: EdgeInsets.all(4),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class SendCardView extends StatelessWidget {
  const SendCardView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => CreateTradeBloc(),
      child: BlocBuilder<CreateTradeBloc, CreateTradeState>(
        builder: (context, state) {
          final bloc = context.read<CreateTradeBloc>();

          return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                surfaceTintColor: Colors.transparent,
                backgroundColor: theme.scaffoldBackgroundColor,
                title: Text(
                  'Send Card',
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close))
                ],
              ),
              body: Column(
                children: [
                  const SearchCardTextField(),
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
                            final card = state.cards[index];
                            final imageSmall = card.imageUris?.small ?? '';
                            final frontImageSmall =
                                card.cardFaces?.first.imageUris?['small'] ?? '';
                            final imageNormal = card.imageUris?.normal ?? '';
                            final frontImageNormal =
                                card.cardFaces?.first.imageUris?['normal'] ??
                                    '';
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                IconButton.filled(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    icon:
                                                        const Icon(Icons.close))
                                              ],
                                            ),
                                            imageNormal.isNotEmpty
                                                ? ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                    child: Image.network(
                                                      imageNormal,
                                                      errorBuilder: (context,
                                                              error,
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
                                                                BorderRadius
                                                                    .circular(
                                                                        14),
                                                            child: Image.network(
                                                                frontImageNormal)),
                                                        back: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        14),
                                                            child: Image.network(
                                                                backImageNormal)),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 150.0),
                                                        child: IgnorePointer(
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              IgnorePointer(
                                                                child:
                                                                    CircleAvatar(
                                                                  radius: 30,
                                                                  backgroundColor: theme
                                                                      .primaryColor
                                                                      .withOpacity(
                                                                          .6),
                                                                  child:
                                                                      IgnorePointer(
                                                                    child: IconButton(
                                                                        iconSize:
                                                                            40,
                                                                        onPressed:
                                                                            () {},
                                                                        icon: Icon(
                                                                            Icons.autorenew)),
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
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: FilledButton(
                                                  onPressed: () {
                                                    bloc.add(CreateTradeEvent
                                                        .selectCard(
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
                      const SelectedCard()
                    } else ...{
                      const PlaceholderCard()
                    },
                  },
                  if (state.selectedCards.isNotEmpty)
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: theme.colorScheme.primary),
                        onPressed: () {
                          Navigator.pop(context, state.selectedCards.first);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Send',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Icon(CupertinoIcons.arrow_up_circle_fill,
                                color: Colors.white)
                          ],
                        ))
                ],
              ));
        },
      ),
    );
  }
}
