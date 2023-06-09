import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Sign_In/bloc/sign_in_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final emailKey = GlobalKey<FormState>();
    final passwordKey = GlobalKey<FormState>();
    final signInBloc = context.read<SignInBloc>();
    final appBloc = context.read<AppBloc>();

    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state.user != UserModel.empty) {
          appBloc.add(AppBlocEvent.updateUser(user: state.user));
          Navigator.pop(context, true);
        }
      },
      child: BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: theme.scaffoldBackgroundColor,
              title: const Text('Sign In'),
            ),
            body: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: TextFormField(
                    key: emailKey,
                    validator: (value) {
                      final bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value ?? '');
                      return emailValid ? null : 'Invalid Email Format';
                    },
                    onChanged: (value) {
                      signInBloc.add(SignInEvent.changeEmail(email: value));
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    autofillHints: const [AutofillHints.email],
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 8),
                        fillColor: theme.cardColor,
                        filled: true,
                        hintText: 'Email',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: theme.primaryColor),
                            borderRadius: BorderRadius.circular(15)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: theme.dividerColor),
                            borderRadius: BorderRadius.circular(15)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: theme.colorScheme.error),
                            borderRadius: BorderRadius.circular(15)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: theme.colorScheme.error),
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: TextFormField(
                    key: passwordKey,
                    validator: (value) {
                      if (value!.length < 6 || value.isEmpty) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      signInBloc
                          .add(SignInEvent.changePassword(password: value));
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    autofillHints: const [AutofillHints.password],
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 8),
                        fillColor: theme.cardColor,
                        filled: true,
                        hintText: 'Password',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: theme.primaryColor),
                            borderRadius: BorderRadius.circular(15)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: theme.dividerColor),
                            borderRadius: BorderRadius.circular(15)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: theme.colorScheme.error),
                            borderRadius: BorderRadius.circular(15)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: theme.colorScheme.error),
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: state.isFromValid ? 1.0 : 0.0,
                  child: ProgressButton.icon(
                      iconedButtons: {
                        ButtonState.idle: IconedButton(
                          text: "Sign In",
                          icon: const Icon(Icons.login_rounded,
                              color: Colors.white),
                          color: theme.colorScheme.primary,
                        ),
                        ButtonState.loading: IconedButton(
                            text: "Loading",
                            color: theme.colorScheme.secondary),
                        ButtonState.fail: IconedButton(
                            text: "Failed",
                            icon: const Icon(Icons.cancel, color: Colors.white),
                            color: Colors.red.shade300),
                        ButtonState.success: IconedButton(
                            text: "Success",
                            icon: const Icon(
                              Icons.check_circle,
                              color: Colors.white,
                            ),
                            color: Colors.green.shade400)
                      },
                      onPressed: () {
                        signInBloc.add(SignInEvent.signinWithEmailAndPassword(
                          context: context,
                          email: state.email,
                          password: state.password,
                        ));
                      },
                      state: state.buttonState),
                ),
              ),
              Visibility(
                visible: state.error != '',
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(state.error),
                ),
              ),
              if (Platform.isIOS)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                      color: theme.colorScheme.primary,
                    )),
                    onPressed: () {
                      signInBloc.add(SignInEvent.signInWithApple());
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const FaIcon(FontAwesomeIcons.apple),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Sign In with Apple',
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(
                    color: theme.colorScheme.primary,
                  )),
                  onPressed: () {
                    signInBloc.add(const SignInEvent.signInWithGoogle());
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const FaIcon(FontAwesomeIcons.google),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Sign In with Google',
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextButton(
                  // style: ElevatedButton.styleFrom(
                  //     side: BorderSide(
                  //   color: theme.colorScheme.primary,
                  // )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignUp');
                  },
                  child: Text(
                    'Sign Up',
                    style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Spacer()
            ]),
          );
        },
      ),
    );
  }
}
