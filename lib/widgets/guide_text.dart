import 'package:diggin_v2/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class GuideText {

  static Material _baseGuideText(
      BuildContext context, String text, TextStyle style) =>
      Material(
        type: MaterialType.transparency,
        child: Text(text, style: style),
      );

  static Material logo(
      BuildContext context,
      String text,
      ) {
    return _baseGuideText(
      context,
      text,
      AppTextTheme(context).logo,
    );
  }

  static Material title(
      BuildContext context,
      String text,
      ) {
    return _baseGuideText(
      context,
      text,
      AppTextTheme(context).title,
    );
  }

  static Material sectionTitle(BuildContext context, String text) {
    return _baseGuideText(
      context,
      text,
      AppTextTheme(context).sectionTitle,
    );
  }

  static Material subTitle(BuildContext context, String text) {
    return _baseGuideText(
      context,
      text,
      AppTextTheme(context).subtitle,
    );
  }

  static Material caption(BuildContext context, String text) {
    return _baseGuideText(
      context,
      text,
      AppTextTheme(context).caption,
    );
  }

  static Material body(BuildContext context, String text) {
    return _baseGuideText(
      context,
      text,
      AppTextTheme(context).body,
    );
  }

  static TextButton textLink(
      BuildContext context,
      String text,
      VoidCallback onPressed,
      ) {
    return TextButton(
      child: _baseGuideText(
        context,
        text,
        AppTextTheme(context).textLink,
      ),
      onPressed: onPressed,
    );
  }
}