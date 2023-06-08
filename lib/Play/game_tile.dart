import 'package:flutter/material.dart';
import 'package:scry/Play/Game_Model/game_types.dart';
import 'package:scry/Widgets/user_avatar.dart';

class GameTile extends StatelessWidget {
  const GameTile({
    super.key,
    required this.title,
    required this.format,
    required this.userID,
  });

  final GameFormats format;
  final String title;
  final String userID;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.white),
        child: ListTile(
          leading: UserAvatar(
            userID: userID,
          ),
          trailing: Icon(Icons.chevron_right_rounded),
          title: Text("Monday Night Magic"),
          subtitle: Text("Format: Commander"),
        ),
      ),
    );
  }
}
