import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Messages/Chat_Model/chat_model.dart';
import 'package:scry/Messages/Chat_View/chat_view.dart';
import 'package:scry/Messages/Messages_Model/message_model.dart';
import 'package:scry/Messages/message_widget.dart';
import 'package:scry/Sign_In/sign_in_modal.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';
import 'package:scry/Trade/Trade_Offer/bloc/trade_offer_bloc.dart';
import 'package:scry/card_dialog.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: theme.scaffoldBackgroundColor,
            elevation: 0,
            title: Text('Messages'),
          ),
          body: Messages()),
    );
  }
}

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBloc = context.read<AppBloc>();

    return BlocBuilder<AppBloc, AppBlocState>(
      builder: (context, state) {
        return state.user == UserModel.empty
            ? Center(
                child: ElevatedButton(
                  onPressed: () {
                    SignInModal().showSignInModal(context: context);
                  },
                  child: const Text('Sign in'),
                ),
              )
            : StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('users')
                    .doc(appBloc.state.user.id)
                    .collection('offers')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(
                      child: Text(
                        'No Trade Offers',
                        style: theme.textTheme.titleMedium,
                      ),
                    );
                  } else if (snapshot.hasData &&
                      snapshot.data!.docs.isNotEmpty) {
                    final docs = snapshot.data!.docs;
                    List<OfferModel> offers = docs
                        .map((doc) => OfferModel.fromJson(
                            doc.data() as Map<String, dynamic>))
                        .toList();

                    return Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: offers.length,
                          itemBuilder: (context, index) {
                            OfferModel offer = offers[index];

                            return BlocProvider(
                              create: (context) => TradeOfferBloc(offer: offer),
                              child:
                                  BlocBuilder<TradeOfferBloc, TradeOfferState>(
                                builder: (context, state) {
                                  return Card(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, right: 8, top: 8),
                                              child: CircleAvatar(
                                                radius: 27,
                                                child: FutureBuilder(
                                                  //method to be waiting for in the future
                                                  future: FirebaseFirestore
                                                      .instance
                                                      .collection('users')
                                                      .doc(offer.offeringUserID)
                                                      .get(),
                                                  builder: (_, snapshot) {
                                                    //if done show data,
                                                    if (snapshot
                                                            .connectionState ==
                                                        ConnectionState.done) {
                                                      if (snapshot.hasData &&
                                                          snapshot.data !=
                                                              null) {
                                                        final doc = snapshot
                                                            .data!
                                                            .data();
                                                        String imageUrl = doc?[
                                                                'profilePicture'] ??
                                                            '';
                                                        return imageUrl == ''
                                                            ? const CircleAvatar(
                                                                radius: 25,
                                                                child: Icon(Icons
                                                                    .person),
                                                              )
                                                            : CircleAvatar(
                                                                radius: 25,
                                                                backgroundImage:
                                                                    NetworkImage(
                                                                        doc![
                                                                            'profilePicture']),
                                                              );
                                                      } else {
                                                        return const CircleAvatar(
                                                          radius: 25,
                                                          child: Icon(
                                                              Icons.person),
                                                        );
                                                      }
                                                    } else {
                                                      //if the process is not finished then show the indicator process
                                                      return const Center(
                                                          child:
                                                              CircularProgressIndicator());
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  offer.offeringUserName,
                                                  style: theme
                                                      .textTheme.titleMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w600),
                                                ),
                                                Text(
                                                  'City, State',
                                                  style: theme
                                                      .textTheme.titleSmall,
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                                child: Icon(Icons
                                                    .arrow_forward_rounded)),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  offer.recipientName,
                                                  style: theme
                                                      .textTheme.titleMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w600),
                                                ),
                                                Text(
                                                  'City, State',
                                                  style: theme
                                                      .textTheme.titleSmall,
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, right: 8, top: 8),
                                              child: CircleAvatar(
                                                radius: 27,
                                                child: FutureBuilder(
                                                  //method to be waiting for in the future
                                                  future: FirebaseFirestore
                                                      .instance
                                                      .collection('users')
                                                      .doc(
                                                          offer.recipientUserID)
                                                      .get(),
                                                  builder: (_, snapshot) {
                                                    //if done show data,
                                                    if (snapshot
                                                            .connectionState ==
                                                        ConnectionState.done) {
                                                      if (snapshot.hasData &&
                                                          snapshot.data !=
                                                              null) {
                                                        final doc = snapshot
                                                            .data!
                                                            .data();
                                                        String imageUrl = doc?[
                                                                'profilePicture'] ??
                                                            '';
                                                        return imageUrl == ''
                                                            ? const CircleAvatar(
                                                                radius: 25,
                                                                child: Icon(Icons
                                                                    .person),
                                                              )
                                                            : CircleAvatar(
                                                                radius: 25,
                                                                backgroundImage:
                                                                    NetworkImage(
                                                                        doc![
                                                                            'profilePicture']),
                                                              );
                                                      } else {
                                                        return const CircleAvatar(
                                                          radius: 25,
                                                          child: Icon(
                                                              Icons.person),
                                                        );
                                                      }
                                                    } else {
                                                      //if the process is not finished then show the indicator process
                                                      return const Center(
                                                          child:
                                                              CircularProgressIndicator());
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Card(
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                    topLeft: Radius.circular(0),
                                                    topRight:
                                                        Radius.circular(15),
                                                    bottomLeft:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15),
                                                  )),
                                                  color:
                                                      theme.colorScheme.primary,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      maxLines: null,
                                                      offer.details,
                                                      style: theme.textTheme
                                                          .titleMedium!
                                                          .copyWith(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Divider(
                                          color: theme.dividerColor,
                                        ),
                                        Row(children: [
                                          Flexible(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: GestureDetector(
                                                    onTap: () => showDialog(
                                                        context: context,
                                                        builder: (context) =>
                                                            CardDialog(
                                                                card: offer
                                                                    .offeredCards
                                                                    .first)),
                                                    child: Material(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      elevation: 6,
                                                      child: offer
                                                                  .offeredCards
                                                                  .first
                                                                  .imageUris
                                                                  ?.normal !=
                                                              null
                                                          ? Image.network(
                                                              offer
                                                                      .offeredCards
                                                                      .first
                                                                      .imageUris
                                                                      ?.normal ??
                                                                  '',
                                                            )
                                                          : const Icon(
                                                              Icons.photo),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Icon(Icons.swap_horiz),
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: GestureDetector(
                                                onTap: () => showDialog(
                                                    context: context,
                                                    builder: (context) =>
                                                        CardDialog(
                                                            card: offer
                                                                .availableCards
                                                                .first)),
                                                child: Material(
                                                  elevation: 6,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  clipBehavior: Clip.hardEdge,
                                                  child: offer
                                                              .availableCards
                                                              .first
                                                              .imageUris
                                                              ?.normal !=
                                                          null
                                                      ? Image.network(
                                                          offer
                                                                  .availableCards
                                                                  .first
                                                                  .imageUris
                                                                  ?.normal ??
                                                              '',
                                                        )
                                                      : const Icon(Icons.photo),
                                                ),
                                              ),
                                            ),
                                          )
                                        ]),
                                        if (offer.offeringUserID !=
                                            appBloc.state.user.id) ...{
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            side: const BorderSide(
                                                                color: Colors
                                                                    .green)),
                                                    onPressed: () {
                                                      context
                                                          .read<
                                                              TradeOfferBloc>()
                                                          .add(TradeOfferEvent
                                                              .accept(
                                                                  context:
                                                                      context));
                                                    },
                                                    child: const Row(
                                                      children: [
                                                        // Icon(Icons
                                                        //     .check_circle_outline_rounded),
                                                        Text('Accept'),
                                                      ],
                                                    )),
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            foregroundColor:
                                                                Colors.red,
                                                            side:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .red),
                                                            surfaceTintColor:
                                                                Colors.red),
                                                    onPressed: () async {
                                                      context
                                                          .read<
                                                              TradeOfferBloc>()
                                                          .add(TradeOfferEvent
                                                              .reject(
                                                                  context:
                                                                      context));
                                                    },
                                                    child: const Row(
                                                      children: [
                                                        // Icon(
                                                        //   Icons.block,
                                                        //   color: Colors.red,
                                                        // ),
                                                        Text(
                                                          'Reject',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.red),
                                                        ),
                                                      ],
                                                    )),
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            foregroundColor:
                                                                Colors.blue,
                                                            side:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .blue),
                                                            surfaceTintColor:
                                                                Colors.blue),
                                                    onPressed: () {},
                                                    child: const Row(
                                                      children: [
                                                        // Icon(
                                                        //   Icons.chat,
                                                        //   color: Colors.blue,
                                                        // ),
                                                        Text(
                                                          'Message',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.blue),
                                                        ),
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          )
                                        } else ...{
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 8.0),
                                                  child: OutlinedButton(
                                                      style: OutlinedButton
                                                          .styleFrom(
                                                              foregroundColor:
                                                                  Colors.red,
                                                              backgroundColor:
                                                                  Colors.red
                                                                      .withOpacity(
                                                                          .1),
                                                              side: BorderSide(
                                                                  color: Colors
                                                                      .red)),
                                                      onPressed: () {
                                                        context
                                                            .read<
                                                                TradeOfferBloc>()
                                                            .add(TradeOfferEvent
                                                                .removeOffer(
                                                                    context:
                                                                        context));
                                                      },
                                                      child: Text(
                                                        'Remove Offer',
                                                        style: TextStyle(
                                                            color: Colors.red),
                                                      )),
                                                ),
                                              )
                                            ],
                                          )
                                        }
                                      ],
                                    ),
                                  );
                                },
                              ),
                            );
                          }),
                    );
                  } else {
                    return Center(
                      child: Text(
                        'No Trade Offers',
                        style: theme.textTheme.titleLarge!
                            .copyWith(color: Colors.red),
                      ),
                    );
                  }
                });
      },
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<AppBloc, AppBlocState>(
      builder: (context, state) {
        final currentUserID = state.user.id;

        return state.user == UserModel.empty
            ? Center(
                child: ElevatedButton(
                  onPressed: () {
                    SignInModal().showSignInModal(context: context);
                  },
                  child: const Text('Sign in'),
                ),
              )
            : StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('chats')
                    .where('users', arrayContains: currentUserID)
                    .snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(
                      child: Text(
                        'No Messages',
                        style: theme.textTheme.titleMedium,
                      ),
                    );
                  } else if (snapshot.hasData &&
                      snapshot.data!.docs.isNotEmpty) {
                    final docs = snapshot.data!.docs;
                    List<ChatModel> chats = docs
                        .map((doc) => ChatModel.fromJson(
                            doc.data() as Map<String, dynamic>))
                        .toList();

                    return ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: chats.length,
                        itemBuilder: (context, index) {
                          ChatModel chat = chats[index];
                          String otherUserID = chat.users
                              .where(
                                (element) => element != currentUserID,
                              )
                              .first;

                          //* wrap the builder in a bloc provider for the ChatBloc
                          return InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ChatView(chat: chat))),
                            child: Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FutureBuilder(
                                            future: FirebaseFirestore.instance
                                                .collection('users')
                                                .doc(otherUserID)
                                                .get(),
                                            builder: (_, snapshot) {
                                              //if done show data,
                                              if (snapshot.connectionState ==
                                                  ConnectionState.done) {
                                                if (snapshot.hasData &&
                                                    snapshot.data != null) {
                                                  final doc =
                                                      snapshot.data!.data();

                                                  final user =
                                                      UserModel.fromJson(doc
                                                          as Map<String,
                                                              dynamic>);

                                                  return Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0,
                                                                right: 8,
                                                                top: 8),
                                                        child: CircleAvatar(
                                                            radius: 27,
                                                            child: user.profilePicture ==
                                                                    ''
                                                                ? CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white,
                                                                    radius: 25,
                                                                    child: Icon(
                                                                      Icons
                                                                          .person,
                                                                      color: theme
                                                                          .colorScheme
                                                                          .primary,
                                                                    ),
                                                                  )
                                                                : CircleAvatar(
                                                                    radius: 25,
                                                                    backgroundImage:
                                                                        NetworkImage(
                                                                            user.profilePicture),
                                                                  )),
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            user.fullName,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium!
                                                                .copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                          ),
                                                          Text(
                                                            'City, State',
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  );
                                                } else {
                                                  return const CircleAvatar(
                                                    radius: 25,
                                                    child: Icon(Icons.person),
                                                  );
                                                }
                                              } else {
                                                //if the process is not finished then show the indicator process
                                                return const Center(
                                                    child:
                                                        CircularProgressIndicator());
                                              }
                                            }),
                                        StreamBuilder<QuerySnapshot>(
                                            stream: FirebaseFirestore.instance
                                                .collection('chats')
                                                .doc(chat.id)
                                                .collection('messages')
                                                .orderBy(
                                                    'createDateInMillisecondsSinceEpoch')
                                                .snapshots(),
                                            builder: (context, snapshot) {
                                              if (snapshot.connectionState ==
                                                  ConnectionState.waiting) {
                                                return const Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                );
                                              } else if (!snapshot.hasData ||
                                                  snapshot.data!.docs.isEmpty) {
                                                return Center(
                                                  child: Text(
                                                    'No Messages',
                                                    style: theme
                                                        .textTheme.titleMedium,
                                                  ),
                                                );
                                              } else if (snapshot.hasData &&
                                                  snapshot
                                                      .data!.docs.isNotEmpty) {
                                                final docs =
                                                    snapshot.data!.docs;

                                                List<MessageModel> messages = docs
                                                    .map((doc) =>
                                                        MessageModel.fromJson(
                                                            doc.data() as Map<
                                                                String,
                                                                dynamic>))
                                                    .toList();

                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 16.0),
                                                  child: MessageWidget(
                                                      userName: null,
                                                      isCurrentUser: messages
                                                              .last
                                                              .sendingUserID ==
                                                          currentUserID,
                                                      message: messages.last),
                                                );
                                              } else {
                                                return Center(
                                                  child: Text(
                                                    'No Message',
                                                    style: theme
                                                        .textTheme.titleLarge!
                                                        .copyWith(
                                                            color: Colors.red),
                                                  ),
                                                );
                                              }
                                            }),
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.chevron_right_rounded)
                                ],
                              ),
                            ),
                          );
                        });
                  } else {
                    return Center(
                      child: Text(
                        'No Trade Offers',
                        style: theme.textTheme.titleLarge!
                            .copyWith(color: Colors.red),
                      ),
                    );
                  }
                });
      },
    );
  }
}
