import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Sign_In/sign_in_view.dart';
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
                    final trade = TradeModel.fromJson(
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
  TradeCard({super.key, required TradeModel this.trade});

  TradeModel trade;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              trade.cards.first.name ?? '',
              style: theme.textTheme.titleLarge,
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: trade.cards.first.imageUris?.normal != null
                  ? FlipCard(
                      autoFlipDuration: const Duration(milliseconds: 300),
                      fill: Fill.fillBack,
                      side: CardSide.BACK,
                      front: Image.network(
                        trade.cards.first.imageUris?.normal ?? '',
                        height: 400,
                      ),
                      back: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/card_back.png')),
                            borderRadius: BorderRadius.circular(15)),
                        height: 400,
                        width: 285,
                      ),
                    )
                  : Icon(Icons.photo)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    color: theme.colorScheme.surface,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: theme.dividerColor)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        trade.details,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
