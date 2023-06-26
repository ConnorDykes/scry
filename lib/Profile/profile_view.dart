import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Profile/bloc/profile_bloc.dart';
import 'package:scry/Sign_In/sign_in_modal.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBloc = context.watch<AppBloc>().state;

    return BlocProvider(
      create: (context) => ProfileBloc(user: appBloc.user),
      child: BlocBuilder<AppBloc, AppBlocState>(
        builder: (context, state) {
          return BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              final bloc = context.read<ProfileBloc>();
              debugPrint(state.user.toString());
              final user = appBloc.user;
              return user == UserModel.empty
                  ? Center(
                      child: ElevatedButton(
                        onPressed: () {
                          SignInModal().showSignInModal(context: context);
                        },
                        child: const Text('Sign in'),
                      ),
                    )
                  : AnnotatedRegion<SystemUiOverlayStyle>(
                      value: SystemUiOverlayStyle.dark,
                      child: Scaffold(
                        appBar: AppBar(
                          systemOverlayStyle: SystemUiOverlayStyle.dark,
                          backgroundColor: theme.scaffoldBackgroundColor,
                          title: const Text('Profile'),
                          leading: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: theme.colorScheme.primary,
                            ),
                            onPressed: () {
                              bloc.add(
                                  ProfileEvent.editProfile(context: context));
                            },
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                  onPressed: () {
                                    _showLogoutDialog(
                                      context: context,
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: Text(
                                          'Logout',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.logout_rounded,
                                        color: Colors.red,
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                        body: ListView(
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
                                        child: user.profilePicture == ''
                                            ? const Icon(
                                                Icons.person,
                                                size: 100,
                                              )
                                            : null,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Display Name',
                                  style: theme.textTheme.titleMedium,
                                ),
                                user.displayName != ''
                                    ? Text(
                                        user.displayName,
                                        style: theme.textTheme.titleLarge!
                                            .copyWith(
                                                color:
                                                    theme.colorScheme.primary),
                                      )
                                    : Text(
                                        'Tap Edit Button To Set',
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.titleLarge!
                                            .copyWith(
                                                color: theme.colorScheme.error),
                                      ),
                                Divider(
                                  color: theme.dividerColor,
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Flexible(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Name',
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                            user.firstName != ''
                                                ? Text(
                                                    '${user.firstName} ${user.lastName}',
                                                    style: theme
                                                        .textTheme.titleLarge!
                                                        .copyWith(
                                                            color: theme
                                                                .colorScheme
                                                                .primary),
                                                    textAlign: TextAlign.center,
                                                    maxLines: null,
                                                  )
                                                : ElevatedButton(
                                                    onPressed: () {
                                                      bloc.add(ProfileEvent
                                                          .editProfile(
                                                              context:
                                                                  context));
                                                    },
                                                    child: Text(
                                                      'Edit',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: theme
                                                          .textTheme.titleLarge!
                                                          .copyWith(
                                                              color: theme
                                                                  .colorScheme
                                                                  .error),
                                                    ),
                                                  )
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Column(
                                          children: [
                                            Text(
                                              'Location',
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                            user.city != ''
                                                ? Text(
                                                    '${user.city}\n${user.state} ${user.areaCode}',
                                                    style: theme
                                                        .textTheme.titleLarge!
                                                        .copyWith(
                                                            color: theme
                                                                .colorScheme
                                                                .primary),
                                                    textAlign: TextAlign.center,
                                                    maxLines: null,
                                                  )
                                                : ElevatedButton(
                                                    onPressed: () {
                                                      bloc.add(ProfileEvent
                                                          .editProfile(
                                                              context:
                                                                  context));
                                                    },
                                                    child: Text(
                                                      'Edit',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: theme
                                                          .textTheme.titleLarge!
                                                          .copyWith(
                                                              color: theme
                                                                  .colorScheme
                                                                  .error),
                                                    ),
                                                  )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                SelectableText('User ID: ${user.id}')
                              ],
                            ),
                            Divider(
                              color: theme.dividerColor,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                  style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.blue,
                                      side:
                                          const BorderSide(color: Colors.blue),
                                      surfaceTintColor: Colors.blue),
                                  onPressed: () async {
                                    String subject =
                                        '[Scry] : *ADD SUBJECT HERE*';
                                    String body =
                                        '[ID: ${user.id}] \n *Do not remove this ID*';

                                    final Uri emailLaunchUri = Uri(
                                        scheme: 'mailto',
                                        path: 'connormdykes@gmail.com',
                                        query: 'subject=$subject&body=$body');
                                    await launchUrl(emailLaunchUri);
                                  },
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: Colors.blue,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          'Contact Developer',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                  style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.red,
                                      side: const BorderSide(color: Colors.red),
                                      surfaceTintColor: Colors.red),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => AlertDialog(
                                              title: Text('Delete Account'),
                                              content: Text(
                                                  'This is CONNOT be undone, are you sure?'),
                                              surfaceTintColor: Colors.red,
                                              actions: [
                                                OutlinedButton(
                                                    style: OutlinedButton.styleFrom(
                                                        side: BorderSide(
                                                            color: theme
                                                                .disabledColor)),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      'Cancel',
                                                      style: TextStyle(
                                                          color: theme
                                                              .disabledColor),
                                                    )),
                                                OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .red)),
                                                    onPressed: () {
                                                      bloc.add(ProfileEvent
                                                          .deleteAccount());
                                                    },
                                                    child: Text(
                                                      'Delete',
                                                      style: TextStyle(
                                                          color: Colors.red),
                                                    ))
                                              ],
                                            ));
                                  },
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.delete_forever,
                                        color: Colors.red,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          'Delete Account',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
            },
          );
        },
      ),
    );
  }
}

void _showLogoutDialog({required BuildContext context}) {
  final theme = Theme.of(context);
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            surfaceTintColor: Colors.grey,
            backgroundColor: theme.scaffoldBackgroundColor,
            title: const Text('Log Out ?'),
            content: const Text("Do you wish to Log Out ?"),
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
                    context.read<AppBloc>().add(const AppBlocEvent.logout());
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'LogOut',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ));
}
