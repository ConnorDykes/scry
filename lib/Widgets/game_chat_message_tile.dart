import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scry/Play/Game_Detail/GameChatMessageModel/game_chat_message_model.dart';

class GameChatMesageTile extends StatelessWidget {
  const GameChatMesageTile({
    super.key,
    required this.model,
  });

  final GameChatMessageModel model;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
          child: CircleAvatar(
            radius: 27,
            child: FutureBuilder(
              //method to be waiting for in the future
              future: FirebaseFirestore.instance
                  .collection('users')
                  .doc(model.senderID)
                  .get(),
              builder: (_, snapshot) {
                //if done show data,
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData && snapshot.data != null) {
                    final doc = snapshot.data!.data();
                    String imageUrl = doc?['profilePicture'] ?? '';
                    return imageUrl == ''
                        ? const CircleAvatar(
                            radius: 25,
                            child: Icon(Icons.person),
                          )
                        : CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                NetworkImage(doc!['profilePicture']),
                          );
                  } else {
                    return const CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.person),
                    );
                  }
                } else {
                  //if the process is not finished then show the indicator process
                  return const Center(child: CircularProgressIndicator());
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
                model.senderName,
                style: theme.textTheme.titleSmall!
                    .copyWith(color: theme.dividerColor),
              ),
              Text(
                model.message,
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
