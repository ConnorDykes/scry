import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Sign_In/sign_in_modal.dart';
import 'package:scry/Sign_In/sign_in_view.dart';
import 'package:scry/Trade/Create_Trade/bloc/create_trade_bloc.dart';
import 'package:scry/Trade/Create_Trade/create_trade_view.dart';
import 'package:scry/Trade/Trade_Model/trade_model.dart';
import 'package:scry/Widgets/our_textfield.dart';
import 'package:scry/Widgets/user_avatar.dart';
import 'package:showcaseview/showcaseview.dart';

class TradeView extends StatefulWidget {
  const TradeView({super.key, required this.fabKey});

  final GlobalKey fabKey;

  @override
  State<TradeView> createState() => _TradeViewState();
}

class _TradeViewState extends State<TradeView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => ShowCaseWidget.of(context).startShowCase([widget.fabKey]));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appBloc = context.read<AppBlocBloc>();
    final theme = Theme.of(context);

    return Scaffold(
        floatingActionButton: Showcase(
          targetBorderRadius: BorderRadius.circular(15),
          key: widget.fabKey,
          description: 'Tap here to create a trade',
          child: FloatingActionButton(
            onPressed: () {
              if (appBloc.state.user == UserModel.empty) {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => const FractionallySizedBox(
                          heightFactor: .9,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: SignInView()),
                        )).then((value) {
                  if (value == true) {
                    Navigator.pushNamed(context, '/CreateTrade');
                  }
                });
              } else {
                Navigator.pushNamed(context, '/CreateTrade');
              }
            },
            child: const Icon(
              Icons.add_rounded,
              size: 45,
            ),
          ),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('trades').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Column(
                children: [
                  Center(
                    child: CircularProgressIndicator(),
                  )
                ],
              );
            } else if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
              final docs = snapshot.data?.docs ?? [];

              return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    final trade = TradePostModel.fromJson(
                        docs[index].data() as Map<String, dynamic>);

                    return TradeCard(
                      trade: trade,
                    );
                  });
            } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "No Trades Available\nTap the + Button to Create One ",
                      style: theme.textTheme.titleMedium,
                    ),
                  )
                ],
              );
            } else {
              return const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text('ERROR'),
                  )
                ],
              );
            }
          },
        ));
  }
}

class TradeCard extends StatelessWidget {
  TradeCard({super.key, required this.trade});

  TradePostModel trade;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appbloc = context.read<AppBlocBloc>();

    return BlocProvider(
      create: (context) =>
          CreateTradeBloc(trade: trade, currentUser: appbloc.state.user),
      child: BlocBuilder<CreateTradeBloc, CreateTradeState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: BorderRadius.circular(14)),
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                      child: UserAvatar(
                        userID: trade.userID,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            trade.userName,
                            style: theme.textTheme.titleMedium!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'City, State',
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                    PopupMenuButton(
                      // Callback that sets the selected popup menu item.
                      surfaceTintColor: Colors.red,
                      itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          child: trade.userID == appbloc.state.user.id
                              ? TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    showDialog(
                                        context: context,
                                        builder: (_) => AlertDialog(
                                              surfaceTintColor:
                                                  theme.colorScheme.error,
                                              title: const Text(
                                                  'Delete This Trade?'),
                                              content: const Text(
                                                  'This cannot be undone'),
                                              actions: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    elevation: 1,
                                                    side: BorderSide(
                                                        color:
                                                            theme.dividerColor),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text("Cancel",
                                                      style: TextStyle(
                                                          color: Colors.grey)),
                                                ),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    surfaceTintColor:
                                                        theme.colorScheme.error,
                                                    elevation: 1,
                                                    side: BorderSide(
                                                        color: theme
                                                            .colorScheme.error),
                                                  ),
                                                  onPressed: () {
                                                    context
                                                        .read<CreateTradeBloc>()
                                                        .add(
                                                            const CreateTradeEvent
                                                                .deleteTrade());
                                                    Navigator.pop(context);
                                                    ScaffoldMessenger
                                                            .of(context)
                                                        .showSnackBar(SnackBar(
                                                            backgroundColor:
                                                                theme
                                                                    .colorScheme
                                                                    .primary,
                                                            content: const Text(
                                                                'Trade deleted')));
                                                    //! call bloc delete function
                                                  },
                                                  child: Text("Delete",
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .error)),
                                                ),
                                              ],
                                            ));
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.delete_forever,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        'Delete',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ))
                              : TextButton(
                                  onPressed: () {},
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.report,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        'Report Trade',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  )),
                        )
                      ],
                    ),
                  ],
                ),
                if (trade.details != '')
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            maxLines: null,
                            trade.details,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                Divider(
                  color: theme.dividerColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 2,
                          side: BorderSide(color: theme.colorScheme.primary),
                        ),
                        onPressed: () {
                          appbloc.state.user == UserModel.empty
                              ? SignInModal()
                                  .showSignInModal(context: context)
                                  .then((value) => value
                                      ? showModalBottomSheet(
                                          isScrollControlled: true,
                                          context: context,
                                          builder: (context) => BlocProvider(
                                                create: (context) =>
                                                    CreateTradeBloc(
                                                        trade: trade,
                                                        currentUser:
                                                            appbloc.state.user),
                                                child: Container(
                                                    clipBehavior: Clip.hardEdge,
                                                    decoration: const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft:
                                                                    Radius
                                                                        .circular(
                                                                            20),
                                                                topRight: Radius
                                                                    .circular(
                                                                        20))),
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.85,
                                                    child:
                                                        const CreateTradeView(
                                                      proposeTrade: true,
                                                    )),
                                              ))
                                      : null)
                              : showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) => BlocProvider(
                                        create: (context) => CreateTradeBloc(
                                            trade: trade,
                                            currentUser: appbloc.state.user),
                                        child: Container(
                                            clipBehavior: Clip.hardEdge,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20))),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.85,
                                            child: const CreateTradeView(
                                              proposeTrade: true,
                                            )),
                                      ));
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.swap_vert),
                            Text(
                              'Offer Trade',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 2,
                          side: BorderSide(color: theme.colorScheme.primary),
                        ),
                        onPressed: () {
                          appbloc.state.user == UserModel.empty
                              ? SignInModal()
                                  .showSignInModal(context: context)
                                  .then((value) => value
                                      ? context.read<CreateTradeBloc>().add(
                                          CreateTradeEvent.messageTapped(
                                              currentUser: appbloc.state.user,
                                              context: context))
                                      : null)
                              : context.read<CreateTradeBloc>().add(
                                  CreateTradeEvent.messageTapped(
                                      currentUser: appbloc.state.user,
                                      context: context));
                        },
                        child: const Row(
                          children: [
                            Icon(FontAwesomeIcons.message),
                            Padding(padding: EdgeInsets.all(4)),
                            Text(
                              'Message',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))
                  ],
                ),
                Card(
                  elevation: 0,
                  color: trade.lookingFor
                      ? theme.colorScheme.primary.withOpacity(.2)
                      : Colors.blue.withOpacity(.2),
                  child: Column(
                    children: [
                      Text(
                        trade.lookingFor ? "Looking For" : "Willing To Trade",
                        style: theme.textTheme.titleMedium!.copyWith(
                            color: trade.lookingFor
                                ? theme.colorScheme.primary
                                : Colors.blue),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: trade.cards.first.imageUris?.normal != null
                                ? Image.network(
                                    trade.cards.first.imageUris?.normal ?? '',
                                    height: 400,
                                  )
                                : const Icon(Icons.photo)),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
