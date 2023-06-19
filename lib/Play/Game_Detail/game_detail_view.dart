import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Play/Game_Detail/bloc/game_detail_bloc.dart';
import 'package:scry/Play/Game_Detail/game_detail_repo.dart';
import 'package:scry/Play/Game_Model/game_model.dart';
import 'package:scry/Widgets/user_tile.dart';
import 'package:intl/intl.dart';

class GameDetailView extends StatelessWidget {
  const GameDetailView({super.key, required this.game});

  final GameModel game;

  @override
  Widget build(BuildContext context) {
    final UserModel currentUser = context.watch<AppBloc>().state.user;
    return BlocProvider(
      create: (context) => GameDetailBloc(game: game, currentUser: currentUser),
      child: BlocBuilder<GameDetailBloc, GameDetailState>(
        builder: (context, state) {
          final currentUser = context.watch<AppBloc>().state.user;
          final game = state.game;
          final theme = Theme.of(context);
          final cost = game.cost > 0 ? game.cost : 'Free';
          final bloc = context.read<GameDetailBloc>();

          return Scaffold(
            appBar: AppBar(
                systemOverlayStyle: SystemUiOverlayStyle.dark,
                backgroundColor: Colors.transparent,
                title: Text(game.title)),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Text(
                    'Creator',
                    style: TextStyle(
                        color: theme.primaryColor, fontWeight: FontWeight.bold),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: UserTile(
                          userID: game.creator?.id ?? '',
                          userName: game.creator?.fullName ?? ''),
                    ),
                  ),
                  Divider(color: theme.disabledColor),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game.description,
                            style: theme.textTheme.titleMedium,
                          ),
                          Divider(color: theme.disabledColor),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                DateFormat(DateFormat.ABBR_MONTH_WEEKDAY_DAY)
                                    .format(game.dateAndTime!),
                                style: theme.textTheme.titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                DateFormat(DateFormat.HOUR_MINUTE)
                                    .format(game.dateAndTime!),
                                style: theme.textTheme.titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: theme.hoverColor),
                                  onPressed: () {
                                    MapsLauncher.launchQuery(game.location);
                                  },
                                  child: Text(
                                    game.location,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.titleMedium!
                                        .copyWith(
                                            color: theme.colorScheme.primary,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'Cost :',
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Text(
                                  cost.toString(),
                                  style: theme.textTheme.titleMedium!.copyWith(
                                      color: theme.colorScheme.primary,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'Fromat :',
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Text(
                                  game.format.name,
                                  style: theme.textTheme.titleMedium!.copyWith(
                                      color: theme.colorScheme.primary,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Divider(color: theme.disabledColor),
                          StreamBuilder(
                              stream: GameDetailRepo(
                                      game: state.game,
                                      currentUser: currentUser)
                                  .playersStream(),
                              builder: (context,
                                  AsyncSnapshot<QuerySnapshot> snapshot) {
                                if (snapshot.hasData) {
                                  List<UserModel> players = snapshot.data!.docs
                                      .map((user) => UserModel.fromJson(
                                          user.data() as Map<String, dynamic>))
                                      .toList();

                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: Text(
                                                'Players :',
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                            ),
                                            Text(
                                              '${players.length} / ${game.maxPlayerCount}',
                                              style: theme
                                                  .textTheme.titleMedium!
                                                  .copyWith(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                            Spacer(),
                                            if (players
                                                    .where((user) =>
                                                        user.id ==
                                                        currentUser.id)
                                                    .length ==
                                                0) ...{
                                              ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          side: BorderSide(
                                                              width: 1,
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary)),
                                                  onPressed: () {
                                                    bloc.add(GameDetailEvent
                                                        .joinGame());
                                                  },
                                                  child: Text('Join'))
                                            } else ...{
                                              if (game.creator!.id !=
                                                  currentUser.id)
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            surfaceTintColor:
                                                                theme
                                                                    .colorScheme
                                                                    .error,
                                                            side: BorderSide(
                                                                width: 1,
                                                                color: theme
                                                                    .colorScheme
                                                                    .error)),
                                                    onPressed: () {
                                                      bloc.add(GameDetailEvent
                                                          .leaveGame());
                                                    },
                                                    child: Text(
                                                      'Leave',
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .error),
                                                    )),
                                            }
                                          ],
                                        ),
                                      ),
                                      ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: snapshot.data!.docs.length,
                                          itemBuilder: ((context, index) {
                                            final data = snapshot
                                                .data!.docs[index]
                                                .data();
                                            UserModel user = UserModel.fromJson(
                                                data as Map<String, dynamic>);
                                            return UserTile(
                                              userID: user.id,
                                              userName: user.displayName ??
                                                  user.fullName,
                                            );
                                          }))
                                    ],
                                  );
                                } else {
                                  return CircularProgressIndicator();
                                }
                              }),
                        ],
                      ),
                    ),
                  ),
                  if (game.creator!.id == currentUser.id)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              // backgroundColor: Colors.white,
                              side: BorderSide(color: Colors.red)),
                          onPressed: () {},
                          child: Text(
                            'Delete',
                            style: TextStyle(color: Colors.red),
                          )),
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
