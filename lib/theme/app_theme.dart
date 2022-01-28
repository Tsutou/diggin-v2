import 'package:diggin_v2/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData lightThemeData = themeData(
    AppColors.lightColorScheme,
    AppColors.lightFocusColor,
  );

  static ThemeData darkThemeData = themeData(
    AppColors.darkColorScheme,
    AppColors.darkFocusColor,
  );

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      primaryColor: const Color(0xFF030303),
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.primary),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          AppColors.lightFillColor.withOpacity(0.80),
          AppColors.darkFillColor,
        ),
      ),
    );
  }
}
