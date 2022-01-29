import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextTheme {
  final BuildContext context;

  AppTextTheme(this.context);

  TextStyle _baseTextStyle({
    required double fontSize,
    required Color color,
    String? fontFamily
  }) {
    return TextStyle(
      letterSpacing: 1.0,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily ?? GoogleFonts.montserrat().fontFamily,
      fontFamilyFallback: [GoogleFonts.italiana().fontFamily ?? ''],
    );
  }

  late final TextStyle logo = _baseTextStyle(
    fontSize: 36,
    color: AppColors(context).primaryText,
    fontFamily: GoogleFonts.sacramento().fontFamily
  ).bold();

  late final TextStyle title = _baseTextStyle(
    fontSize: 24,
    color: AppColors(context).primaryText,
  ).bold();

  late final TextStyle subtitle = _baseTextStyle(
    fontSize: 16,
    color: AppColors(context).primaryText,
  ).normal();

  late final TextStyle sectionTitle = _baseTextStyle(
    fontSize: 20,
    color: AppColors(context).primaryText,
  ).bold();

  late final TextStyle body = _baseTextStyle(
    fontSize: 16,
    color: AppColors(context).primaryText,
  ).normal();

  late final TextStyle caption = _baseTextStyle(
    fontSize: 14,
    color: AppColors.secondaryText,
  ).normal();

  late final TextStyle textLink = _baseTextStyle(
    fontSize: 14,
    color: AppColors.accent,
  ).bold();
}

extension TextStyleExt on TextStyle {
  static const _regular = FontWeight.w400;
  static const _bold = FontWeight.w700;

  TextStyle normal() => copyWith(
        fontWeight: _regular,
      );

  TextStyle bold() => copyWith(
        fontWeight: _bold,
      );
}
