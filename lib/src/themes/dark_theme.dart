import 'package:babigol/babigol.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide.none
  );

ThemeData darkTheme(BuildContext context) {
  return ThemeData(
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      errorStyle: TextStyle(
        color: Color(0xffEB5757),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      fillColor: Color(0xffF2F2F9),
      labelStyle: TextStyle(
        color: Color(0xff333333),
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      border: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      errorBorder: _defaultInputBorder
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFFFFFFF),
      secondary: Color(0xFF394cc3),
      error: Color(0xffEB5757),
    ),
    textTheme: TextTheme(
      displayLarge:
          GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
      displayMedium:
          GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500),
      displaySmall:
          GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
      headlineLarge:
          GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
      headlineMedium:
          GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
      headlineSmall:
          GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400),
      titleLarge:
          GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
      titleMedium:
          GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
      titleSmall:
          GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),
      bodyLarge: 
          GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
      bodyMedium:
          GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
      bodySmall: 
          GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),
      labelLarge: 
          GoogleFonts.poppins(fontSize: 1, fontWeight: FontWeight.w600),
      labelMedium:
          GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
      labelSmall:
          GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
    ),
    extensions: const [
      BabigolColors(
        primary: Color(0xFF00BD08),
        secondary: Color(0xFF0e0e0e),
        error: Color(0xffEB5757),
        black: Color(0xff000000),
        appBackground: Color(0xFFEDEBEB),
        textColor: Color(0xffF2F2F9),
        textColor2: Color(0xff333333),
        urgent: Color(0xfffcb900),
        cardColor: Color(0xFFf5f5f5),
        white: Color(0xffFFFFFF),
        success: Color(0xff00FF85),
      ),
    ],
  );
}

