import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/auth_repo.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Profile/profile_repo.dart';
import 'package:scry/Widgets/our_textfield.dart';
import 'package:scry/constants.dart';

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

    final zipCont = TextEditingController(text: user.areaCode);

    on<_EditProfile>((event, emit) async {
      await showDialog(
          context: event.context,
          builder: (context) {
            final theme = Theme.of(context);
            final currentUser = context.read<AppBloc>().state.user;

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
                  Text('First Name'),
                  OurTextfield(
                    controller: firstNameCont,
                    hintText: 'First Name',
                    suffixIcon: TextButton(
                      child: Text('Save'),
                      onPressed: () async {
                        await profileRepo.updateUser(currentUser.copyWith(
                            firstName: firstNameCont.text));
                        emit(state.copyWith(
                            user: state.user
                                .copyWith(state: firstNameCont.text)));
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Updated First Name')));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('Last Name'),
                  OurTextfield(
                    controller: lastNameCont,
                    hintText: 'Last Name',
                    suffixIcon: TextButton(
                      child: Text('Save'),
                      onPressed: () async {
                        emit(state.copyWith(
                            user:
                                state.user.copyWith(state: lastNameCont.text)));
                        await profileRepo.updateUser(
                            currentUser.copyWith(lastName: lastNameCont.text));
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Updated Last Name')));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('Display Name'),
                  OurTextfield(
                    controller: displayNameCont,
                    hintText: 'Display Name',
                    suffixIcon: TextButton(
                      child: Text('Save'),
                      onPressed: () async {
                        emit(state.copyWith(
                            user: state.user
                                .copyWith(state: displayNameCont.text)));
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
                  Text('City'),
                  OurTextfield(
                    controller: cityCont,
                    hintText: 'City',
                    suffixIcon: TextButton(
                      child: Text('Save'),
                      onPressed: () async {
                        await profileRepo.updateUser(
                            currentUser.copyWith(city: cityCont.text));
                        emit(state.copyWith(
                            user: state.user.copyWith(state: cityCont.text)));
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Updated City')));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('State'),
                  DropdownButton<String>(
                    value: currentUser.state,
                    icon: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: theme.colorScheme.primary,
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.green),
                    underline: Container(
                      height: 2,
                      color: Colors.green,
                    ),
                    onChanged: (String? value) async {
                      await profileRepo
                          .updateUser(currentUser.copyWith(state: value!))
                          .then((_) => emit(state.copyWith(
                              user: state.user.copyWith(state: value!))));
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Updated City')));
                    },
                    items: states.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('Zip Code'),
                  OurTextfield(
                    controller: zipCont,
                    hintText: 'Zip Code',
                    suffixIcon: TextButton(
                      child: Text('Save'),
                      onPressed: () async {
                        emit(state.copyWith(
                            user: state.user.copyWith(areaCode: zipCont.text)));
                        await profileRepo.updateUser(
                            currentUser.copyWith(areaCode: zipCont.text));
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Updated Zip Code')));
                      },
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
