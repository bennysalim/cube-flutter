import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  static const Color colorSecondary = Color.fromRGBO(27, 34, 43, 1);
  static const Color colorPrimary = Color.fromARGB(255, 255, 255, 255);

  static ButtonStyle primaryButton = ElevatedButton.styleFrom(
    backgroundColor: colorPrimary,
    padding: const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 10,
    ),
    textStyle: GoogleFonts.montserrat(
      fontSize: 14,
      color: colorSecondary,
      fontWeight: FontWeight.w600,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36),
    ),
  );
}
