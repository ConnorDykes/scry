import 'package:flutter/material.dart';

class OurTextfield extends StatelessWidget {
  const OurTextfield(
      {super.key,
      this.controller,
      required this.onChanged,
      this.suffixIcon,
      this.hintText,
      this.maxLines = null,
      this.textCapitalization = TextCapitalization.sentences});

  final TextEditingController? controller;
  final Function onChanged;
  final Widget? suffixIcon;
  final String? hintText;
  final int? maxLines;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
      controller: controller ?? TextEditingController(),
      onChanged: (value) async {
        onChanged(value);
      },
      textCapitalization: textCapitalization,
      maxLines: maxLines,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 8),
          fillColor: theme.cardColor,
          filled: true,
          hintText: hintText ?? null,
          suffixIcon: suffixIcon ?? null,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: theme.primaryColor),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: theme.dividerColor),
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
