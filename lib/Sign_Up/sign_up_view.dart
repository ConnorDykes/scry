import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Sign_Up/bloc/sign_up_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBloc = context.read<AppBlocBloc>();
    final signUpBloc = context.read<SignUpBloc>();

    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: theme.scaffoldBackgroundColor,
            title: Text('Create New Account'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: signUpBloc.emailController,
                          onChanged: (value) => signUpBloc
                              .add(SignUpEvent.changeEmail(email: value)),
                          autofillHints: [AutofillHints.email],
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 8),
                              fillColor: theme.cardColor,
                              filled: true,
                              hintText: 'Email',
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: theme.primaryColor),
                                  borderRadius: BorderRadius.circular(15)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: theme.dividerColor),
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: signUpBloc.passwordController,
                          onChanged: (value) => signUpBloc
                              .add(SignUpEvent.changePassword(password: value)),
                          autofillHints: [AutofillHints.newPassword],
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 8),
                              fillColor: theme.cardColor,
                              filled: true,
                              hintText: 'Password',
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: theme.primaryColor),
                                  borderRadius: BorderRadius.circular(15)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: theme.dividerColor),
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: signUpBloc.confirmPasswordController,
                          onChanged: (value) => signUpBloc.add(
                              SignUpEvent.changeConfirmPassword(
                                  confirmPassword: value)),
                          autofillHints: [AutofillHints.newPassword],
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 8),
                              fillColor: theme.cardColor,
                              filled: true,
                              hintText: 'Confirm Password',
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: theme.primaryColor),
                                  borderRadius: BorderRadius.circular(15)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: theme.dividerColor),
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          endIndent: 8,
                          indent: 8,
                          thickness: .5,
                        ),
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: signUpBloc.firstNameController,
                                onChanged: (value) => signUpBloc.add(
                                    SignUpEvent.changeFirstName(
                                        firstName: value)),
                                autofillHints: [AutofillHints.name],
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 8),
                                    fillColor: theme.cardColor,
                                    filled: true,
                                    hintText: 'First Name',
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.primaryColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.dividerColor),
                                        borderRadius:
                                            BorderRadius.circular(15))),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: signUpBloc.lastNameController,
                                onChanged: (value) => signUpBloc.add(
                                    SignUpEvent.changeLastName(
                                        lastName: value)),
                                autofillHints: [AutofillHints.name],
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 8),
                                    fillColor: theme.cardColor,
                                    filled: true,
                                    hintText: 'Last Name',
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.primaryColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.dividerColor),
                                        borderRadius:
                                            BorderRadius.circular(15))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: state.isFromValid ? 1.0 : 0.0,
                  child: ProgressButton.icon(iconedButtons: {
                    ButtonState.idle: IconedButton(
                        text: "Create Account",
                        icon: Icon(Icons.person_add_alt_rounded,
                            color: Colors.white),
                        color: theme.colorScheme.primary),
                    ButtonState.loading: IconedButton(
                        text: "Loading", color: theme.colorScheme.secondary),
                    ButtonState.fail: IconedButton(
                        text: "Failed",
                        icon: Icon(Icons.cancel, color: Colors.white),
                        color: Colors.red.shade300),
                    ButtonState.success: IconedButton(
                        text: "Success",
                        icon: Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        color: Colors.green.shade400)
                  }, onPressed: () {}, state: state.buttonState),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
