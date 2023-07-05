import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, required this.userID, this.radius = 25});

  final String userID;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CircleAvatar(
      radius: radius + 2,
      child: FutureBuilder(
        //method to be waiting for in the future
        future:
            FirebaseFirestore.instance.collection('users').doc(userID).get(),
        builder: (_, snapshot) {
          //if done show data,
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData && snapshot.data != null) {
              final doc = snapshot.data!.data();
              String imageUrl = doc?['profilePicture'] ?? '';
              return imageUrl == ''
                  ? CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: radius,
                      child: Icon(
                        Icons.person,
                        color: theme.colorScheme.primary,
                      ),
                    )
                  : CircleAvatar(
                      radius: radius,
                      child: CircleAvatar(
                        radius: radius - .5,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: CachedNetworkImage(
                              imageUrl: doc!['profilePicture']),
                        ),
                      ),

                      // Container(
                      //   width: 48.0,
                      //   height: 48.0,
                      //   decoration: BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     image: DecorationImage(
                      //       image: CachedNetworkImageProvider(
                      //           doc!['profilePicture']),
                      //     ),
                      //   ),
                      // )
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
    );
  }
}
