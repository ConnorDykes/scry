import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scry/Sign_In/sign_in_view.dart';

class SignInModal {
  Future<bool> showSignInModal({required BuildContext context}) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: SignInView())).then((value) => value ?? false);
  }
}
