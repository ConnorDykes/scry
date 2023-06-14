import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:scry/Play/Game_Detail/bloc/game_detail_bloc.dart';
import 'package:scry/Play/Game_Model/game_model.dart';
import 'package:scry/Widgets/user_tile.dart';
import 'package:intl/intl.dart';

class GameDetailView extends StatelessWidget {
  const GameDetailView({super.key, required this.game});

  final GameModel game;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameDetailBloc(game: game),
      child: BlocBuilder<GameDetailBloc, GameDetailState>(
        builder: (context, state) {
          final game = state.game;
          final theme = Theme.of(context);

          return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.transparent, title: Text(game.title)),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Details')],
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                DateFormat(DateFormat.ABBR_MONTH_WEEKDAY_DAY)
                                    .format(game.dateAndTime!),
                                style: theme.textTheme.titleMedium,
                              ),
                              Text(
                                DateFormat(DateFormat.HOUR_MINUTE)
                                    .format(game.dateAndTime!),
                                style: theme.textTheme.titleMedium,
                              ),
                            ],
                          ),
                          Divider(color: theme.disabledColor),
                          ElevatedButton(
                            onPressed: () {
                              MapsLauncher.launchQuery(game.location);
                            },
                            child: Text(
                              game.location,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleLarge!
                                  .copyWith(color: theme.colorScheme.primary),
                            ),
                          ),
                        ],
                      ),
                    ),
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
