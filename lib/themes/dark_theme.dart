import 'package:flutter/material.dart';

class DarkTheme {
  static const Color colorPrimary = Color(0xff1b222b);
  static const Color colorSecondary = Color(0x0fffffff);

  static ButtonStyle primaryButton = ElevatedButton.styleFrom(
    backgroundColor: colorPrimary,
    padding: const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 10,
    ),
    textStyle: const TextStyle(
      fontSize: 14,
      color: colorSecondary,
      fontWeight: FontWeight.w600,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36),
    ),
  );
}
