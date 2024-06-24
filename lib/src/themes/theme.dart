import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide.none
  );

ThemeData lightTheme(BuildContext context) {
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
        primary: Color(0xFFFFFFFF),
        secondary: Color(0xFF394cc3),
        error: Color(0xffEB5757),
        black: Color(0xff000000),
        appBackground: Color(0xFFEDEBEB),
        textColor: Color(0xff333333),
        textColor2: Color(0xffF2F2F9),
        urgent: Color(0xfffcb900),
        cardColor: Color(0xFFf5f5f5),
        white: Color(0xffFFFFFF),
        success: Color(0xff00FF85),
      ),
    ],
  );
}

class BabigolColors extends ThemeExtension<BabigolColors> {
  const BabigolColors({
    required this.primary,
    required this.secondary,
    required this.error,
    required this.success,
    required this.urgent,
    required this.black,
    required this.appBackground,
    required this.textColor,
    required this.textColor2,
    required this.cardColor,
    required this.white,
  });

  final Color primary;
  final Color secondary;
  final Color success;
  final Color error;
  final Color textColor;
  final Color textColor2;
  final Color white;
  final Color black;
  final Color cardColor;
  final Color urgent;
  final Color appBackground;
  static BabigolColors of(BuildContext context) {
    return Theme.of(context).extension<BabigolColors>()!;
  }

  @override
  ThemeExtension<BabigolColors> copyWith({
    Color? primary,
    Color? secondary,
    Color? error,
    Color? success,
    Color? black,
    Color? textColor,
    Color? textColor2,
    Color? appBackground,
    Color? white,
    Color? urgent,
    Color? cardColor,
  }) {
    return BabigolColors(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      error: error ?? this.error,
      success: success ?? this.success,
      black: black ?? this.black,
      appBackground: appBackground ?? this.appBackground,
      textColor: textColor ?? this.textColor,
      textColor2: textColor2 ?? this.textColor2,
      cardColor: cardColor ?? this.cardColor,
      white: white ?? this.white,
      urgent: urgent ?? this.urgent,
    );
  }

  @override
  ThemeExtension<BabigolColors> lerp(
    covariant ThemeExtension<BabigolColors>? other,
    double t,
  ) {
    if (other is! BabigolColors) {
      return this;
    }

    return BabigolColors(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      urgent: Color.lerp(urgent, other.urgent, t)!,
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
      black: Color.lerp(black, other.black, t)!,
      textColor2: Color.lerp(textColor2, other.textColor2, t)!,
      appBackground: Color.lerp(appBackground, other.appBackground, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      white: Color.lerp(white, other.white, t)!,
      cardColor: Color.lerp(cardColor, other.cardColor, t)!,
    );
  }
}