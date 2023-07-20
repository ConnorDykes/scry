import 'package:cached_network_image/cached_network_image.dart';
import 'package:elliptic_text/elliptic_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Profile/bloc/profile_bloc.dart';
import 'package:scry/Profile/profile_repo.dart';
import 'package:scry/Profile/select_profile_photo.dart';
import 'package:scry/Sign_In/sign_in_modal.dart';
import 'package:scry/Trade/Create_Trade/bloc/create_trade_bloc.dart';
import 'package:scry/Trade/Trade_Model/trade_model.dart';
import 'package:scry/Widgets/our_textfield.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

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

              String profilePicture() {
                if (user.profilePicture == '') {
                  return 'https://www.vhv.rs/dpng/d/312-3120300_default-profile-hd-png-download.png';
                }
                if (user.profilePicture.contains('s96-c')) {
                  return user.profilePicture.replaceAll("s96-c", "s192-c");
                } else {
                  return user.profilePicture;
                }
              }

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
                          leading: TextButton(
                            child: Text(
                              'Edit',
                              style: theme.textTheme.titleMedium!
                                  .copyWith(color: theme.colorScheme.primary),
                            ),
                            onPressed: () {
                              _showEditProfileDialog(context: context);
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child:
                                      Stack(clipBehavior: Clip.none, children: [
                                    CircleAvatar(
                                      radius: 100,
                                      child: CircleAvatar(
                                        radius: 98,
                                        backgroundImage:
                                            user.profilePicture == ''
                                                ? null
                                                : CachedNetworkImageProvider(
                                                    profilePicture()),
                                        child: user.profilePicture == ''
                                            ? const Icon(
                                                Icons.person,
                                                size: 150,
                                              )
                                            : null,
                                      ),
                                    ),
                                    Positioned(
                                        right: 0,
                                        child: IconButton.filledTonal(
                                            color: Colors.white,
                                            onPressed: () {
                                              _showProfilePhotoPicker(
                                                  context: context);
                                            },
                                            icon: FaIcon(
                                              FontAwesomeIcons.image,
                                              color: Colors.white,
                                            ))),
                                  ]),
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
                                    : TextButton(
                                        onPressed: () {
                                          bloc.add(ProfileEvent.editProfile(
                                              context: context));
                                        },
                                        child: Text(
                                          'Edit',
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(
                                                  color: theme
                                                      .colorScheme.primary),
                                        ),
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
                                                : TextButton(
                                                    onPressed: () {
                                                      bloc.add(ProfileEvent
                                                          .editProfile(
                                                              context:
                                                                  context));
                                                    },
                                                    child: Text(
                                                      'Edit',
                                                      style: theme.textTheme
                                                          .titleMedium!
                                                          .copyWith(
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary),
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
                                                : TextButton(
                                                    onPressed: () {
                                                      bloc.add(ProfileEvent
                                                          .editProfile(
                                                              context:
                                                                  context));
                                                    },
                                                    child: Text(
                                                      'Edit',
                                                      style: theme.textTheme
                                                          .titleMedium!
                                                          .copyWith(
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(
                                      onPressed: () async {
                                        Uri terms = Uri.parse(
                                            'https://www.termsandconditionsgenerator.com/live.php?token=mTzfezy0QYom35rLmpAXlz2ipHnPYPjL');

                                        await launchUrl(terms);
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.info_outline_rounded),
                                          Text('Terms & Conditions'),
                                        ],
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(
                                      onPressed: () async {
                                        Uri privacyPolicy = Uri.parse(
                                            'https://www.termsfeed.com/live/46dda6d7-89e6-4cee-95a2-7cd579161c5e');

                                        await launchUrl(privacyPolicy);
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.privacy_tip_outlined),
                                          Text('Privacy Policy'),
                                        ],
                                      )),
                                )
                              ],
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

void _showProfilePhotoPicker({required BuildContext context}) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => BlocProvider(
            create: (context) => CreateTradeBloc(
                trade: TradePostModel.empty,
                currentUser: context.read<AppBloc>().state.user),
            child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                height: MediaQuery.of(context).size.height * 0.85,
                child: const SelectProfilePhoto()),
          ));
}

void _showEditProfileDialog({required BuildContext context}) {
  showDialog(
      context: context,
      builder: (_) {
        final theme = Theme.of(context);
        final currentUser = context.read<AppBloc>().state.user;
        final user = context.read<ProfileBloc>().state.user;
        final ProfileRepo profileRepo = ProfileRepo(user: user);
        final firstNameCont = TextEditingController(text: user.firstName);
        final lastNameCont = TextEditingController(text: user.lastName);
        final displayNameCont = TextEditingController(text: user.displayName);
        final cityCont = TextEditingController(text: user.city);

        final zipCont = TextEditingController(text: user.areaCode);
        return BlocProvider.value(
          value: context.read<ProfileBloc>(),
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              final bloc = context.read<ProfileBloc>();
              return Dialog(
                surfaceTintColor: theme.scaffoldBackgroundColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                  child: ListView(primary: true, shrinkWrap: true, children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Edit User Details',
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    Divider(
                      color: theme.disabledColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'First Name',
                        style: TextStyle(color: theme.hintColor),
                      ),
                    ),
                    OurTextfield(
                      controller: firstNameCont,
                      hintText: 'First Name',
                      suffixIcon: TextButton(
                        child: Text('Save'),
                        onPressed: () async {
                          bloc.add(ProfileEvent.updateFirstName(
                              fistName: firstNameCont.text));
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Updated First Name')));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Last Name',
                        style: TextStyle(color: theme.hintColor),
                      ),
                    ),
                    OurTextfield(
                      controller: lastNameCont,
                      hintText: 'Last Name',
                      suffixIcon: TextButton(
                        child: Text('Save'),
                        onPressed: () async {
                          bloc.add(ProfileEvent.updateLastName(
                              lastName: lastNameCont.text));
                          await profileRepo.updateUser(currentUser.copyWith(
                              lastName: lastNameCont.text));
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Updated Last Name')));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Display Name',
                        style: TextStyle(color: theme.hintColor),
                      ),
                    ),
                    OurTextfield(
                      controller: displayNameCont,
                      hintText: 'Display Name',
                      suffixIcon: TextButton(
                        child: Text('Save'),
                        onPressed: () async {
                          bloc.add(ProfileEvent.updateDisplayName(
                              displayName: displayNameCont.text));
                          await profileRepo.updateUser(currentUser.copyWith(
                              displayName: displayNameCont.text));
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Updated Display Name')));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'City',
                        style: TextStyle(color: theme.hintColor),
                      ),
                    ),
                    OurTextfield(
                      controller: cityCont,
                      hintText: 'City',
                      suffixIcon: TextButton(
                        child: Text('Save'),
                        onPressed: () async {
                          await profileRepo.updateUser(
                              currentUser.copyWith(city: cityCont.text));
                          bloc.add(
                              ProfileEvent.updateCity(city: cityCont.text));
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Updated City')));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Zip Code',
                                  style: TextStyle(color: theme.hintColor),
                                ),
                              ),
                              OurTextfield(
                                controller: zipCont,
                                hintText: 'Zip Code',
                                suffixIcon: TextButton(
                                  child: Text('Save'),
                                  onPressed: () async {
                                    bloc.add(ProfileEvent.updateZipCode(
                                        zipCode: zipCont.text));
                                    await profileRepo.updateUser(currentUser
                                        .copyWith(areaCode: zipCont.text));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text('Updated Zip Code')));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            Text(
                              'State',
                              style: TextStyle(color: theme.hintColor),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                DropdownButton<String>(
                                  value: state.user.state,
                                  icon: Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: theme.colorScheme.primary,
                                  ),
                                  iconSize: 40,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.green),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.green,
                                  ),
                                  onChanged: (String? value) async {
                                    await profileRepo
                                        .updateUser(
                                            currentUser.copyWith(state: value!))
                                        .then((_) => bloc.add(
                                            ProfileEvent.updateState(
                                                state: value)));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text('Updated State')));
                                  },
                                  items: states.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ]),
                ),
              );
            },
          ),
        );
        ;
      });
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
