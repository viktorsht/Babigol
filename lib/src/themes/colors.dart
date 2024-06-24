import 'package:flutter/material.dart';

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