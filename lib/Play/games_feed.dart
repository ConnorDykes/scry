import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Play/Create_New_Game/create_new_game_view.dart';
import 'package:scry/Play/Game_Model/game_model.dart';
import 'package:scry/Play/Game_Model/game_types.dart';
import 'package:scry/Play/game_tile.dart';
import 'package:scry/Play/play_repo.dart';
import 'package:scry/Sign_In/sign_in_modal.dart';
import 'package:scry/Trade/Create_Trade/bloc/create_trade_bloc.dart';

class GamesFeed extends StatefulWidget {
  const GamesFeed({super.key});

  @override
  State<GamesFeed> createState() => _GamesFeedState();
}

class _GamesFeedState extends State<GamesFeed> {
  bool showingAvailableGames = true;

  @override
  Widget build(BuildContext context) {
    final appBloc = context.watch<AppBloc>();
    final currentUser = appBloc.state.user;
    final playRepo = PlayRepo();

    final theme = Theme.of(context);

    Map<int, Widget> segmentedControlChildren = <int, Widget>{
      0: Text(
        "Available Games ",
        style: TextStyle(
            fontSize: 18,
            color: showingAvailableGames ? Colors.white : Colors.black),
      ),
      1: StreamBuilder(
        stream: playRepo.AvailableGamesStream(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.data != null) {
            final gamesCount = snapshot.data!.docs
                .where((game) => currentUser.games.contains(game.id))
                .length;

            return Container(
              child: Text(
                "Joined Games (${gamesCount})",
                style: TextStyle(
                    fontSize: 18,
                    color: showingAvailableGames ? Colors.black : Colors.white),
              ),
            );
          }
          return Text(
            "Joined Games",
            style: TextStyle(
                fontSize: 18,
                color: showingAvailableGames ? Colors.black : Colors.white),
          );
        },
      ),
    };

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (appBloc.state.user.id == UserModel.empty) {
            SignInModal()
                .showSignInModal(context: context)
                .then((value) => value
                    ? showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => const FractionallySizedBox(
                              heightFactor: .9,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  child: CreateNewGameView()),
                            ))
                    : null);
          } else {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => const FractionallySizedBox(
                      heightFactor: .9,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: CreateNewGameView()),
                    ));
          }
        },
        child: const Icon(
          Icons.add_rounded,
          size: 45,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: CupertinoSlidingSegmentedControl(
                thumbColor: theme.colorScheme.primary,
                groupValue: showingAvailableGames == true ? 0 : 1,
                onValueChanged: (value) {
                  setState(() {
                    showingAvailableGames = !showingAvailableGames;
                  });
                },
                children: segmentedControlChildren,
              ),
            ),
            Center(
              child: StreamBuilder<QuerySnapshot>(
                stream: playRepo.AvailableGamesStream(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasData && snapshot.data != null) {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          final gameDoc = snapshot.data!.docs[index].data();

                          final game = GameModel.fromJson(
                              gameDoc as Map<String, dynamic>);
                          final isJoinedGame =
                              appBloc.state.user.games.contains(game.id);

                          if (showingAvailableGames && isJoinedGame) {
                            return SizedBox.shrink();
                          }
                          if (!showingAvailableGames && isJoinedGame) {
                            return GameTile(
                              game: game,
                            );
                          }
                          if (showingAvailableGames && !isJoinedGame) {
                            return GameTile(
                              game: game,
                            );
                          }

                          //check if user games array has game ID ans render new list new or new widget if so
                          return SizedBox.shrink();
                        });
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
