import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextTheme myTextTheme = TextTheme(
  displayLarge: GoogleFonts.bebasNeue(
      fontSize: 42, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  displayMedium: GoogleFonts.bebasNeue(
      fontSize: 36, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  displaySmall:
      GoogleFonts.bebasNeue(fontSize: 46, fontWeight: FontWeight.w400),
  headlineMedium: GoogleFonts.staatliches(
      fontSize: 28, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headlineSmall:
      GoogleFonts.staatliches(fontSize: 24, fontWeight: FontWeight.w400),
  titleLarge: GoogleFonts.staatliches(
      fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  titleMedium: GoogleFonts.roboto(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  titleSmall: GoogleFonts.roboto(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge: GoogleFonts.roboto(
      fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0.5),
  bodyMedium: GoogleFonts.roboto(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  labelLarge: GoogleFonts.oxygen(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  bodySmall: GoogleFonts.oxygen(
      fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.4),
  labelSmall: GoogleFonts.oxygen(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

const ColorScheme myColorSchemeDark = ColorScheme.dark(
  primary: Color(0xff8c0000),
  onPrimary: Color(0xfffaf2f2),
  secondary: Color(0xfff20f28),
  onSecondary: Color(0xffffffff),
  surface: Color(0xFF451d1d),
  onSurface: Color(0xffdedede),
  background: Color(0xffe8c5c5),
  onBackground: Color(0xffffffff),
  error: Color(0xffffc505),
  onError: Color(0xffffffff),
  brightness: Brightness.dark,
);

const ColorScheme myColorSchemeLight = ColorScheme.light(
  primary: Color(0xffb51f1f),
  onPrimary: Color(0xffffffff),
  secondary: Color(0xffffffff),
  onSecondary: Color(0xff8c0000),
  surface: Color(0xFFede8e8),
  onSurface: Colors.black87,
  background: Color(0xffe8c5c5),
  onBackground: Color(0xffffffff),
  error: Color(0xffffc505),
  onError: Color(0xffffffff),
  brightness: Brightness.light,
);
