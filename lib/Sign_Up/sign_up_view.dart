import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Text('Create New Account'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
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
                    borderRadius: BorderRadius.circular(15))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
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
                    borderRadius: BorderRadius.circular(15))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 8),
                fillColor: theme.cardColor,
                filled: true,
                hintText: 'Confirm Password',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: theme.primaryColor),
                    borderRadius: BorderRadius.circular(15)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15))),
          ),
        ),
      ]),
    );
  }
}
