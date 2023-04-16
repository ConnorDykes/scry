import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OurSnackbar {
  OurSnackbar(
      {Key? key, required this.message, this.backgroundColor, this.icon});

  OurSnackbar.failure({Key? key, required this.message})
      : icon = CupertinoIcons.clear_circled,
        backgroundColor = Colors.red;

  OurSnackbar.success({Key? key, required this.message})
      : icon = Icons.check_circle_outline_rounded,
        backgroundColor = Colors.green;

  IconData? icon;
  Color? backgroundColor;
  String message;

  show({required BuildContext context}) {
    final theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: theme.primaryColor,
        content: Row(
          children: [
            if (icon != null)
              Icon(
                icon!,
                color: Colors.white,
              ),
            Expanded(child: Text(message!)),
          ],
        )));
  }
}
