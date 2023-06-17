import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/auth_repo.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Profile/profile_repo.dart';
import 'package:scry/Widgets/our_textfield.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserModel user;

  final AuthRepo _authRepo = AuthRepo();
  ProfileBloc({required this.user}) : super(ProfileState(user: user)) {
    final ProfileRepo profileRepo = ProfileRepo(user: user);
    final firstNameCont = TextEditingController(text: user.firstName);
    final lastNameCont = TextEditingController(text: user.lastName);
    final displayNameCont = TextEditingController(text: user.displayName);
    final cityCont = TextEditingController(text: user.city);
    final state = user.state;
    final zipCont = TextEditingController(text: user.areaCode);

    on<_EditProfile>((event, emit) {
      showDialog(
          context: event.context,
          builder: (context) {
            final theme = Theme.of(context);
            final currentUser = context.read<AppBlocBloc>().state.user;

            return Dialog(
              surfaceTintColor: theme.scaffoldBackgroundColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                child: ListView(children: [
                  Text('First Name'),
                  OurTextfield(
                    controller: firstNameCont,
                    hintText: 'First Name',
                    suffixIcon: TextButton(
                      child: Text('Save'),
                      onPressed: () {},
                    ),
                  ),
                  Divider(
                    color: theme.disabledColor,
                  ),
                  Text('Last Name'),
                  OurTextfield(
                    controller: lastNameCont,
                    hintText: 'Last Name',
                    suffixIcon: TextButton(
                      child: Text('Save'),
                      onPressed: () {},
                    ),
                  ),
                  Divider(
                    color: theme.disabledColor,
                  ),
                  Text('Display Name'),
                  OurTextfield(
                    controller: displayNameCont,
                    hintText: 'Display Name',
                    suffixIcon: TextButton(
                      child: Text('Save'),
                      onPressed: null,
                    ),
                  ),
                  Divider(
                    color: theme.disabledColor,
                  ),
                  Text('City'),
                  OurTextfield(
                    controller: cityCont,
                    hintText: 'City',
                    suffixIcon: TextButton(
                      child: Text('Save'),
                      onPressed: () {
                        profileRepo.updateUser(
                            currentUser.copyWith(city: cityCont.text));
                      },
                    ),
                  ),
                  Divider(
                    color: theme.disabledColor,
                  ),
                  Text('Zip Code'),
                  OurTextfield(
                    controller: zipCont,
                    hintText: 'Zip Code',
                    suffixIcon: TextButton(
                      child: Text('Save'),
                      onPressed: () {},
                    ),
                  ),
                ]),
              ),
            );
          });
    });
    // on<_Logout>((event, emit) {});
  }
}
