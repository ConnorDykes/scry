import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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

class ChatView extends StatelessWidget {
  const ChatView({super.key, required this.chat});

  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBloc = context.read<AppBlocBloc>();
    final currentUser = appBloc.state.user;

    return BlocProvider(
      create: (context) => ChatBloc(chat: chat),
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          final chatBloc = context.read<ChatBloc>();

          return Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.startTop,
              floatingActionButton: IconButton.filled(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.chevron_left_rounded)),
              body: SafeArea(
                child: Column(
                  children: [
                    if (chat.offer != OfferModel.empty) ...{
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          Flexible(
                            flex: 2,
                            child: UserTile(
                                userID: chat.offer.offeringUserID,
                                userName: chat.offer.offeringUserName),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                          ]),
                      Divider(
                        color: theme.dividerColor,
                      )
                    },
                    StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance
                            .collection('chats')
                            .doc(chat.id)
                            .collection('messages')
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (!snapshot.hasData ||
                              snapshot.data!.docs.isEmpty) {
                            return Text('No Messages');
                          } else if (snapshot.hasData &&
                              snapshot.data!.docs.isNotEmpty) {
                            final docs = snapshot.data!.docs;
                            return Expanded(
                              child: ListView.builder(
                                  itemCount: docs.length,
                                  itemBuilder: (context, index) {
                                    MessageModel message =
                                        MessageModel.fromJson(docs[index].data()
                                            as Map<String, dynamic>);
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: MessageWidget(
                                        message: message.message,
                                        userName: message.sendingUsername,
                                        color: message.sendingUserID ==
                                                currentUser.id
                                            ? theme.colorScheme.primary
                                            : Colors.grey,
                                      ),
                                    );
                                  }),
                            );
                          } else {
                            return Text('ERROR');
                          }
                        }),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: OurTextfield(
                          controller: chatBloc.newMessageController,
                          onChanged: (value) {
                            chatBloc.add(ChatEvent.updateMessage(value: value));
                          }),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
