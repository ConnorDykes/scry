import 'package:flutter/material.dart';
import 'package:scry/Sign_In/sign_in_view.dart';

class SignInModal {
  Future<bool> showSignInModal({required BuildContext context}) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => FractionallySizedBox(
              heightFactor: 0.9,
              child: const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: SignInView()),
            )).then((value) => value ?? false);
  }
}
