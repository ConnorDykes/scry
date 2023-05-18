import 'dart:math';

import 'package:flutter/material.dart';

class OurTextfield extends StatelessWidget {
  const OurTextfield(
      {super.key,
      this.controller,
      required this.onChanged,
      this.suffixIcon,
      this.hintText,
      this.maxLines,
      this.minLines,
      this.textCapitalization = TextCapitalization.sentences,
      this.keyboardType});

  final TextEditingController? controller;
  final Function onChanged;
  final Widget? suffixIcon;
  final String? hintText;
  final int? maxLines;
  final int? minLines;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
      controller: controller ?? TextEditingController(),
      onChanged: (value) async {
        onChanged(value);
      },
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
          contentPadding: maxLines != null
              ? const EdgeInsets.only(
                  left: 8,
                )
              : const EdgeInsets.all(8),
          fillColor: theme.cardColor,
          filled: true,
          hintText: hintText,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: theme.primaryColor),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: theme.dividerColor),
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
