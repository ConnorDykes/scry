import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/Sign_In/bloc/sign_in_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final emailKey = GlobalKey<FormState>();
    final passwordKey = GlobalKey<FormState>();
    final signInBloc = context.read<SignInBloc>();

    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: theme.scaffoldBackgroundColor,
            title: Text('Sign In'),
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
                  autofillHints: [AutofillHints.email],
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 8),
                      fillColor: theme.cardColor,
                      filled: true,
                      hintText: 'Email',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: theme.primaryColor),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
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
                  },
                  onChanged: (value) {
                    signInBloc.add(SignInEvent.changePassword(password: value));
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autofillHints: [AutofillHints.password],
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 8),
                      fillColor: theme.cardColor,
                      filled: true,
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: theme.primaryColor),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
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
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: state.isFromValid ? 1.0 : 0.0,
              child: ProgressButton.icon(
                  iconedButtons: {
                    ButtonState.idle: IconedButton(
                        text: "Sign In", color: theme.colorScheme.primary),
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
                  },
                  onPressed: () {
                    // signUpBloc.add(SignUpEvent.signUpWithEmailAndPassword(
                    //     context: context,
                    //     email: state.email,
                    //     password: state.password,
                    //     firstName: state.firstName,
                    //     lastName: state.lastName));
                  },
                  state: state.buttonState),
            ),
            Visibility(
              visible: state.error != '',
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(state.error),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 1.0,
                    width: 40,
                    child: new Center(
                      child: new Container(
                        margin: new EdgeInsetsDirectional.only(
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
                    child: new Center(
                      child: new Container(
                        margin: new EdgeInsetsDirectional.only(
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
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/SignUp');
                },
                child: Text('Sign Up'),
              ),
            ),
            Spacer()
          ]),
        );
      },
    );
  }
}
