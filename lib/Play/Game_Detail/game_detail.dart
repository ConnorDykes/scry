import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/Play/Game_Detail/bloc/game_detail_bloc.dart';
import 'package:scry/Play/Game_Model/game_model.dart';
import 'package:scry/Widgets/user_tile.dart';

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

          return Scaffold(
            appBar: AppBar(title: Text(game.title)),
            body: ListView(
              children: [
                UserTile(
                    userID: game.creator?.id ?? '',
                    userName: game.creator?.fullName ?? ''),
                Divider(),
                // Text(game.dateAndTime)
              ],
            ),
          );
        },
      ),
    );
  }
}
