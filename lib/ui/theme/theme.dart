import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xff242424);

final themeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  textTheme: GoogleFonts.gelasioTextTheme().copyWith(
    displayLarge: GoogleFonts.gelasio(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: const Color(0xff303030),
    ),
    displayMedium: GoogleFonts.gelasio(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: const Color(0xff606060),
    ),
    displaySmall: GoogleFonts.nunitoSans(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: const Color(0xff808080),
    ),
  ),
);
