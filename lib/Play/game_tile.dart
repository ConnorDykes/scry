import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/Play/Game_Detail/bloc/game_detail_bloc.dart';
import 'package:scry/Play/Game_Detail/game_detail_view.dart';
import 'package:scry/Play/Game_Model/game_model.dart';
import 'package:scry/Play/Game_Model/game_types.dart';
import 'package:scry/Widgets/user_avatar.dart';
import 'package:intl/intl.dart';

class GameTile extends StatelessWidget {
  const GameTile({
    super.key,
    required this.game,
  });

  final GameModel game;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.white),
        child: ListTile(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GameDetailView(
                        game: game,
                      ))),
          leading: UserAvatar(
            userID: game.creator?.id ?? '',
          ),
          trailing: Icon(Icons.chevron_right_rounded),
          title: Text(game.title),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(game.format.name),
              Text(
                DateFormat(DateFormat.MONTH_DAY).format(game.dateAndTime!) +
                    " @ " +
                    DateFormat(DateFormat.HOUR_MINUTE)
                        .format(game.dateAndTime!),
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }
}
