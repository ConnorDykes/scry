import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scry/Authentication/user_model.dart';

class UserTile extends StatelessWidget {
  const UserTile(
      {super.key, required this.userID, required this.userName, this.trailing});

  final String userID;
  final String userName;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        FutureBuilder(
          //method to be waiting for in the future
          future:
              FirebaseFirestore.instance.collection('users').doc(userID).get(),
          builder: (_, snapshot) {
            //if done show data,
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData && snapshot.data != null) {
                final doc = snapshot.data!.data();
                UserModel user = UserModel.fromJson(doc!);
                String imageUrl = doc['profilePicture'];
                return Row(
                  children: [
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                        child: CircleAvatar(
                          radius: 27,
                          child: imageUrl == ''
                              ? const CircleAvatar(
                                  radius: 25,
                                  child: Icon(Icons.person),
                                )
                              : CircleAvatar(
                                  radius: 25,
                                  backgroundImage: CachedNetworkImageProvider(
                                    imageUrl,
                                  ),
                                ),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: theme.textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '${user.city} ${user.state}',
                          style: theme.textTheme.titleSmall!
                              .copyWith(color: theme.disabledColor),
                        ),
                      ],
                    ),
                  ],
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
        trailing ?? SizedBox.shrink()
      ],
    );
  }
}
