import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Messages/Chat_Model/chat_model.dart';
import 'package:scry/Messages/Chat_View/bloc/chat_bloc.dart';
import 'package:scry/Messages/Messages_Model/message_model.dart';
import 'package:scry/Messages/message_widget.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';
import 'package:scry/Widgets/our_textfield.dart';
import 'package:scry/Widgets/user_tile.dart';
import 'package:scry/card_dialog.dart';
import 'package:scry/constants.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key, required this.chat});

  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBloc = context.read<AppBlocBloc>();
    final currentUser = appBloc.state.user;
    final ScrollController scrollController = ScrollController();

    return Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        // floatingActionButton: Material(
        //   elevation: 2,
        //   type: MaterialType.transparency,
        //   child: Ink(
        //     decoration: BoxDecoration(
        //       border: Border.all(color: Colors.green, width: 1.0),
        //       color: theme.cardColor,
        //       shape: BoxShape.circle,
        //     ),
        //     child: InkWell(
        //       borderRadius: BorderRadius.circular(500.0),
        //       onTap: () {
        //         Navigator.pop(context);
        //       },
        //       child: Padding(
        //         padding: EdgeInsets.all(8.0),
        //         child: Icon(
        //             color: theme.colorScheme.primary,
        //             Icons.chevron_left_rounded),
        //       ),
        //     ),
        //   ),
        // ),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: [
              if (chat.offer != OfferModel.empty) ...{
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
                      return Text('No Messages');
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
                                  message: message.message,
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
                        state.loadStatus == LoadStatus.failure) {
                      //
                    }
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

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: OurTextfield(
                          controller: chatBloc.newMessageController,
                          onChanged: (value) {
                            chatBloc.add(ChatEvent.updateMessage(value: value));
                          },
                          hintText: 'Message',
                          suffixIcon: state.newMessage == ''
                              ? null
                              : sendIcon(state.loadStatus),
                        ),
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

    return Card(
        clipBehavior: Clip.hardEdge,
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Offer',
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: theme.colorScheme.primary),
                ),
              ],
            ),
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: UserTile(
                            userID: chat.offer.offeringUserID,
                            userName: chat.offer.offeringUserName),
                      ),
                    ],
                  ),
                  Divider(
                    color: theme.dividerColor,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () => showDialog(
                            context: context,
                            builder: (context) =>
                                CardDialog(card: chat.offer.offeredCards.first),
                          ),
                          child: Container(
                            height: 100,
                            child: Image.network(chat.offer.offeredCards.first
                                    .imageUris?.small ??
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
                            child: Image.network(chat.offer.availableCards.first
                                    .imageUris?.small ??
                                ''),
                          ),
                        ),
                      ]),
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
