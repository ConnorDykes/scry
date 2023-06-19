import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Sign_Up/bloc/sign_up_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBloc = context.read<AppBloc>();
    final signUpBloc = context.read<SignUpBloc>();
    final emailKey = GlobalKey<FormState>();
    final passwordKey = GlobalKey<FormState>();
    final firstNameKey = GlobalKey<FormState>();
    final lastNameKey = GlobalKey<FormState>();

    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return BlocListener<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state.user != UserModel.empty) {
              appBloc.add(AppBlocEvent.updateUser(user: state.user));
            }
          },
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: theme.scaffoldBackgroundColor,
              title: const Text('Create New Account'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text(
                          'Sign Up with Email',
                          style: theme.textTheme.titleLarge!
                              .copyWith(color: theme.colorScheme.primary),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            key: emailKey,
                            child: TextFormField(
                              controller: signUpBloc.emailController,
                              validator: (value) {
                                final bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value ?? '');
                                return emailValid
                                    ? null
                                    : 'Invalid Email Format';
                              },
                              onChanged: (value) {
                                emailKey.currentState!.validate();
                                signUpBloc
                                    .add(SignUpEvent.changeEmail(email: value));
                              },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              autofillHints: const [AutofillHints.email],
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 8),
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
                                    borderRadius: BorderRadius.circular(15)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: theme.colorScheme.error),
                                    borderRadius: BorderRadius.circular(15)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: theme.colorScheme.error),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(8)),
                        Form(
                          key: passwordKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: signUpBloc.passwordController,
                                  onChanged: (value) {
                                    signUpBloc.add(SignUpEvent.changePassword(
                                        password: value));
                                    //passwordKey.currentState!.validate();
                                  },
                                  validator: (value) {
                                    if (state.password !=
                                        state.confirmPassword) {
                                      return 'Passwords do not match';
                                    } else if (value!.length < 6 ||
                                        value == '') {
                                      return 'Password must be at least 6 characters';
                                    } else {
                                      return null;
                                    }
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  autofillHints: const [
                                    AutofillHints.newPassword
                                  ],
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.only(left: 8),
                                    fillColor: theme.cardColor,
                                    filled: true,
                                    hintText: 'Password',
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.primaryColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.dividerColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.colorScheme.error),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.colorScheme.error),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller:
                                      signUpBloc.confirmPasswordController,
                                  onChanged: (value) {
                                    signUpBloc.add(
                                        SignUpEvent.changeConfirmPassword(
                                            confirmPassword: value));
                                    // passwordKey.currentState!.validate();
                                  },
                                  validator: (value) {
                                    if (state.password !=
                                        state.confirmPassword) {
                                      return 'Passwords do not match';
                                    }
                                    if (value!.length < 6 || value == '') {
                                      return 'Password must be at least 6 characters';
                                    } else {
                                      return null;
                                    }
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  autofillHints: const [
                                    AutofillHints.newPassword
                                  ],
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.only(left: 8),
                                    fillColor: theme.cardColor,
                                    filled: true,
                                    hintText: 'Confirm Password',
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.primaryColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.dividerColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.colorScheme.error),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: theme.colorScheme.error),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(
                            color: theme.dividerColor,
                            endIndent: 8,
                            indent: 8,
                          ),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Form(
                                  key: firstNameKey,
                                  child: TextFormField(
                                    controller: signUpBloc.firstNameController,
                                    onChanged: (value) => signUpBloc.add(
                                        SignUpEvent.changeFirstName(
                                            firstName: value)),
                                    validator: (value) {
                                      if (value!.isEmpty || value == '') {
                                        return 'Required';
                                      } else {
                                        return null;
                                      }
                                    },
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    autofillHints: const [AutofillHints.name],
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.only(left: 8),
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
                                              BorderRadius.circular(15),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: theme.colorScheme.error),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: theme.colorScheme.error),
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Form(
                                  key: lastNameKey,
                                  child: TextFormField(
                                    controller: signUpBloc.lastNameController,
                                    onChanged: (value) => signUpBloc.add(
                                        SignUpEvent.changeLastName(
                                            lastName: value)),
                                    validator: (value) {
                                      if (value!.isEmpty || value == '') {
                                        return 'Required';
                                      } else {
                                        return null;
                                      }
                                    },
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    autofillHints: const [AutofillHints.name],
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.only(left: 8),
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
                                                BorderRadius.circular(15)),
                                        errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: theme.colorScheme.error),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: theme.colorScheme.error),
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  AnimatedOpacity(
                    duration: const Duration(seconds: 1),
                    opacity: state.isFromValid ? 1.0 : 0.0,
                    child: ProgressButton.icon(
                        iconedButtons: {
                          ButtonState.idle: IconedButton(
                              text: "Create Account",
                              icon: const Icon(Icons.person_add_alt_rounded,
                                  color: Colors.white),
                              color: theme.colorScheme.primary),
                          ButtonState.loading: IconedButton(
                              text: "Loading",
                              color: theme.colorScheme.secondary),
                          ButtonState.fail: IconedButton(
                              text: "Failed",
                              icon:
                                  const Icon(Icons.cancel, color: Colors.white),
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
                          signUpBloc.add(SignUpEvent.signUpWithEmailAndPassword(
                              context: context,
                              email: state.email,
                              password: state.password,
                              firstName: state.firstName,
                              lastName: state.lastName));
                        },
                        state: state.buttonState),
                  ),
                  Visibility(
                    visible: state.emailError != '',
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(state.emailError),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 1.0,
                          width: 40,
                          child: Center(
                            child: Container(
                              margin: const EdgeInsetsDirectional.only(
                                  start: 1.0, end: 1.0),
                              height: 5.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "OR",
                        style: theme.textTheme.titleLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 1.0,
                          width: 40,
                          child: Center(
                            child: Container(
                              margin: const EdgeInsetsDirectional.only(
                                  start: 1.0, end: 1.0),
                              height: 5.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(
                        color: theme.colorScheme.primary,
                      )),
                      onPressed: () {
                        // Apple sign in
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const FaIcon(FontAwesomeIcons.apple),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Sign Up with Apple',
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
                        signUpBloc.add(
                            SignUpEvent.signUpWithGoogle(context: context));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const FaIcon(FontAwesomeIcons.google),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Sign Up with Google',
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Spacer()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
