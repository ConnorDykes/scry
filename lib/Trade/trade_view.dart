import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Sign_In/sign_in_view.dart';
import 'package:scry/Trade/Create_Trade/bloc/create_trade_bloc.dart';
import 'package:scry/Trade/Create_Trade/create_trade_view.dart';
import 'package:scry/Trade/trade_model.dart';

class TradeView extends StatelessWidget {
  const TradeView({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = context.read<AppBlocBloc>();
    final theme = Theme.of(context);

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (appBloc.state.user == UserModel.empty) {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: SignInView())).then((value) {
                if (value == true) {
                  Navigator.pushNamed(context, '/CreateTrade');
                }
              });
            } else {
              Navigator.pushNamed(context, '/CreateTrade');
            }
          },
          child: Icon(
            Icons.add_rounded,
            size: 45,
          ),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('trades').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Column(
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
                children: [
                  Center(
                    child: Text(
                      "No Trades Available ",
                      style: theme.textTheme.titleMedium,
                    ),
                  )
                ],
              );
            } else {
              return Column(
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
  TradeCard({super.key, required TradePostModel this.trade});

  TradePostModel trade;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appbloc = context.read<AppBlocBloc>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                child: CircleAvatar(
                  radius: 27,
                  child: FutureBuilder(
                    //method to be waiting for in the future
                    future: FirebaseFirestore.instance
                        .collection('users')
                        .doc(trade.userID)
                        .get(),
                    builder: (_, snapshot) {
                      //if done show data,
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasData && snapshot.data != null) {
                          final doc = snapshot.data!.data();
                          String imageUrl = doc?['profilePicture'] ?? '';
                          return imageUrl == ''
                              ? CircleAvatar(
                                  radius: 25,
                                  child: Icon(Icons.person),
                                )
                              : CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      NetworkImage(doc!['profilePicture']),
                                );
                        } else {
                          return CircleAvatar(
                            radius: 25,
                            child: Icon(Icons.person),
                          );
                        }
                      } else {
                        //if the process is not finished then show the indicator process
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
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
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
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
          Divider(
            color: theme.dividerColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 1,
                    side: BorderSide(color: theme.colorScheme.primary),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => BlocProvider(
                              create: (context) => CreateTradeBloc(
                                  trade: trade,
                                  currentUser: appbloc.state.user),
                              child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  height:
                                      MediaQuery.of(context).size.height * 0.85,
                                  child: CreateTradeView(
                                    proposeTrade: true,
                                  )),
                            ));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.swap_vert),
                      Text('Trade'),
                    ],
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 1,
                    side: BorderSide(color: theme.colorScheme.primary),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.message),
                      Padding(padding: EdgeInsets.all(4)),
                      Text('Message'),
                    ],
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: trade.cards.first.imageUris?.normal != null
                    ? Image.network(
                        trade.cards.first.imageUris?.normal ?? '',
                        height: 400,
                      )
                    : Icon(Icons.photo)),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    trade.details,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
