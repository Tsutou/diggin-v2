import 'package:flutter/material.dart';

class AppColors {
  final BuildContext context;

  AppColors(this.context);

  static const lightFillColor = main;
  static const darkFillColor = Colors.white;

  static final Color lightFocusColor = Colors.white.withOpacity(0.12);
  static final Color darkFocusColor = Colors.white.withOpacity(0.12);

  late final bool _isDark = Theme.of(context).brightness == Brightness.dark;

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Colors.white,
    secondary: accent,
    background: Colors.white,
    surface: Colors.white,
    onBackground: lightFillColor,
    error: lightFillColor,
    onError: error,
    onPrimary: lightFillColor,
    onSecondary: lightFillColor,
    onSurface: lightFillColor,
    brightness: Brightness.light,
    primaryVariant: lightFillColor,
    secondaryVariant: accent,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Colors.black,
    secondary: accent,
    background: Colors.black,
    surface: Colors.black,
    onBackground: Colors.white,
    error: darkFillColor,
    onError: error,
    onPrimary: darkFillColor,
    onSecondary: darkFillColor,
    onSurface: darkFillColor,
    brightness: Brightness.dark,
    primaryVariant: lightFillColor,
    secondaryVariant: accent,
  );

  static const Color main = Color(0xFF404040);
  static const Color sub = Color(0xFF8C8C8C);
  static const Color accent = Color(0xFF954C93);
  static const Color error = Color(0xFFF24949);
  late final Color primaryText = _isDark ? const Color(0xFFD9D9D9) : main;
  static const Color secondaryText = Color(0xFF8C8C8C);
}
