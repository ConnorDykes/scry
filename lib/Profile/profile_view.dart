import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Sign_In/sign_in_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<AppBlocBloc, AppBlocState>(
      builder: (context, state) {
        debugPrint(state.user.toString());
        final user = state.user;
        return state.user == UserModel.empty
            ? SignInView()
            : Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text('Profile'),
                  actions: [
                    IconButton(
                        onPressed: () {
                          _showLogoutDialog(
                            context: context,
                          );
                        },
                        icon: Icon(Icons.logout_rounded))
                  ],
                ),
                body: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 78,
                                  child: CircleAvatar(
                                    radius: 75,
                                    backgroundImage: NetworkImage(user
                                        .profilePicture
                                        .replaceAll("s96-c", "s192-c")),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              user.displayName != ''
                                  ? user.displayName
                                  : user.fullName,
                              style: theme.textTheme.titleLarge,
                            ),
                            SelectableText('User ID: ${user.id}')
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      color: theme.dividerColor,
                    )
                  ],
                ),
              );
      },
    );
  }
}

void _showLogoutDialog({required BuildContext context}) {
  final theme = Theme.of(context);
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('Log Out ?'),
            content: Text("Do you wish to Log Out ?"),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: theme.disabledColor),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    context.read<AppBlocBloc>().add(AppBlocEvent.logout());
                    Navigator.pop(context);
                  },
                  child: Text(
                    'LogOut',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ));
}
