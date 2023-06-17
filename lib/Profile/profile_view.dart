import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Profile/bloc/profile_bloc.dart';
import 'package:scry/Sign_In/sign_in_modal.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBloc = context.read<AppBlocBloc>().state;

    return BlocProvider(
      create: (context) => ProfileBloc(user: appBloc.user),
      child: BlocBuilder<AppBlocBloc, AppBlocState>(
        builder: (context, state) {
          return BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              final bloc = context.read<ProfileBloc>();
              debugPrint(state.user.toString());
              final user = appBloc.user;
              return state.user == UserModel.empty
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
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      Icon(Icons.logout_rounded),
                                    ],
                                  )),
                            ),
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
                                      user.displayName != ''
                                          ? user.displayName
                                          : user.fullName,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    Text(
                                        '${user.city} ${user.state} ${user.areaCode}'),
                                    SelectableText('User ID: ${user.id}')
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              color: theme.dividerColor,
                            ),
                            TextButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.red,
                                    side: const BorderSide(color: Colors.red),
                                    surfaceTintColor: Colors.red),
                                onPressed: () {},
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.no_accounts_outlined,
                                      color: Colors.red,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        'Delete Account',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                ))
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
                    context
                        .read<AppBlocBloc>()
                        .add(const AppBlocEvent.logout());
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'LogOut',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ));
}
