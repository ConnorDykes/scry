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
    return BlocBuilder<AppBlocBloc, AppBlocState>(
      builder: (context, state) {
        final user = state.user;
        return state.user == UserModel.empty
            ? SignInView()
            : Scaffold(
                appBar: AppBar(
                  title: Text(user.fullName),
                ),
                body: Center(child: Text('Profile view')),
              );
      },
    );
  }
}
