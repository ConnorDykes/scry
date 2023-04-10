import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Sign_In/sign_in_modal.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';
import 'package:scry/Trade/offer_view.dart';

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
          elevation: 0,
          flexibleSpace: SafeArea(
            child: TabBar(
              dividerColor: theme.dividerColor,
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
                  onPressed: () {
                    SignInModal().showSignInModal(context: context);
                  },
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
                        padding: EdgeInsets.zero,
                        itemCount: offers.length,
                        itemBuilder: (context, index) {
                          OfferModel offer = offers[index];

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
                                                        child:
                                                            Icon(Icons.person),
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
                                                  fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          'City, State',
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(0),
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          )),
                                          color: theme.colorScheme.primary,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              maxLines: null,
                                              offer.details,
                                              style: theme
                                                  .textTheme.titleMedium!
                                                  .copyWith(
                                                      color: Colors.white),
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
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: offer.offeredCards.first
                                                          .imageUris?.normal !=
                                                      null
                                                  ? Image.network(
                                                      offer
                                                              .offeredCards
                                                              .first
                                                              .imageUris
                                                              ?.normal ??
                                                          '',
                                                    )
                                                  : Icon(Icons.photo)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.swap_horiz),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: offer.availableCards.first
                                                      .imageUris?.normal !=
                                                  null
                                              ? Image.network(
                                                  offer.availableCards.first
                                                          .imageUris?.normal ??
                                                      '',
                                                  fit: BoxFit.fitWidth,
                                                )
                                              : Icon(Icons.photo)),
                                    ),
                                  )
                                ]),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              side: BorderSide(
                                                  color: Colors.green)),
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Icon(Icons
                                                  .check_circle_outline_rounded),
                                              Text('Accept'),
                                            ],
                                          )),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.red,
                                              side:
                                                  BorderSide(color: Colors.red),
                                              surfaceTintColor: Colors.red),
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.block,
                                                color: Colors.red,
                                              ),
                                              Text(
                                                'Reject',
                                                style: TextStyle(
                                                    color: Colors.red),
                                              ),
                                            ],
                                          )),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.blue,
                                              side: BorderSide(
                                                  color: Colors.blue),
                                              surfaceTintColor: Colors.blue),
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.chat,
                                                color: Colors.blue,
                                              ),
                                              Text(
                                                'Message',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                )
                              ],
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

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Messages'),
    );
  }
}
