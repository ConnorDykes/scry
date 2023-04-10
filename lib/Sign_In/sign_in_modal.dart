import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scry/Sign_In/sign_in_view.dart';

class SignInModal {
  void showSignInModal({required BuildContext context}) {
    showModalBottomSheet(
        context: context,
        builder: (context) => ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: SignInView()));
  }
}
