import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';

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
          flexibleSpace: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.swap_vert),
                        Text('Trade Offers'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.message),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text('Messages'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[Offers(), Messages()],
        ),
      ),
    );
    ;
  }
}

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBloc = context.read<AppBlocBloc>();

    return BlocBuilder<AppBlocBloc, AppBlocState>(
      builder: (context, state) {
        return state.user == UserModel.empty
            ? Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign in'),
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
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(
                      child: Text(
                        'No Trade Offers',
                        style: theme.textTheme.titleLarge,
                      ),
                    );
                  } else if (snapshot.hasData &&
                      snapshot.data!.docs.isNotEmpty) {
                    final docs = snapshot.data!.docs;
                    List<OfferModel> offers = docs
                        .map((doc) => OfferModel.fromJson(
                            doc.data() as Map<String, dynamic>))
                        .toList();

                    return ListView.builder(
                        itemCount: offers.length,
                        itemBuilder: (context, index) {
                          OfferModel offer = offers[index];

                          return Card(
                            child: Row(children: [
                              Column(
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
                                            future: FirebaseFirestore.instance
                                                .collection('users')
                                                .doc(offer.recipientUserID)
                                                .get(),
                                            builder: (_, snapshot) {
                                              //if done show data,
                                              if (snapshot.connectionState ==
                                                  ConnectionState.done) {
                                                if (snapshot.hasData &&
                                                    snapshot.data != null) {
                                                  final doc =
                                                      snapshot.data!.data();
                                                  String imageUrl =
                                                      doc?['profilePicture'] ??
                                                          '';
                                                  return imageUrl == ''
                                                      ? CircleAvatar(
                                                          radius: 25,
                                                          child: Icon(
                                                              Icons.person),
                                                        )
                                                      : CircleAvatar(
                                                          radius: 25,
                                                          backgroundImage:
                                                              NetworkImage(doc![
                                                                  'profilePicture']),
                                                        );
                                                } else {
                                                  return CircleAvatar(
                                                    radius: 25,
                                                    child: Icon(Icons.person),
                                                  );
                                                }
                                              } else {
                                                //if the process is not finished then show the indicator process
                                                return Center(
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
                                            offer.recipientName,
                                            style: theme.textTheme.titleMedium!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                          Text(
                                            'City, State',
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ],
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
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: offer.offeredCards.first
                                                    .imageUris?.normal !=
                                                null
                                            ? Image.network(
                                                offer.offeredCards.first
                                                        .imageUris?.normal ??
                                                    '',
                                                height: 400,
                                              )
                                            : Icon(Icons.photo)),
                                  ),
                                ],
                              )
                            ]),
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

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Messages'),
    );
  }
}
