import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';

class Utils {
  static double mediaHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double mediaWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static GlobalKey homeKey = GlobalKey();
  static GlobalKey skillsKey = GlobalKey();
  static GlobalKey aboutKey = GlobalKey();
  static GlobalKey projectsKey = GlobalKey();
  static GlobalKey contactKey = GlobalKey();

  static void resetKeys() {
    homeKey = GlobalKey();
    skillsKey = GlobalKey();
    aboutKey = GlobalKey();
    projectsKey = GlobalKey();
    contactKey = GlobalKey();
  }

  static int calculateCrossAxisCount(
      {double? screenWidth, BuildContext? context}) {
    if (context != null) {
      screenWidth = mediaWidth(context);
    }
    if (screenWidth == null) {
      throw ArgumentError(
          "Either 'screenWidth' or 'context' must be provided.");
    }

    if (screenWidth > 1200) return 3; // Desktop
    if (screenWidth > 800) return 2; // Tablet
    return 1; // Mobile
  }

  static bool isMobile({double? screenWidth, BuildContext? context}) {
    if (context != null) {
      screenWidth = mediaWidth(context);
    }
    if (screenWidth == null) {
      throw ArgumentError(
          "Either 'screenWidth' or 'context' must be provided.");
    }

    if (screenWidth < 800) return true;
    return false;
  }

  static bool isTablet({double? screenWidth, BuildContext? context}) {
    if (context != null) {
      screenWidth = mediaWidth(context);
    }
    if (screenWidth == null) {
      throw ArgumentError(
          "Either 'screenWidth' or 'context' must be provided.");
    }

    if (screenWidth > 800 && screenWidth < 1200) return true;
    return false;
  }

  static bool isDesktop({double? screenWidth, BuildContext? context}) {
    if (context != null) {
      screenWidth = mediaWidth(context);
    }
    if (screenWidth == null) {
      throw ArgumentError(
          "Either 'screenWidth' or 'context' must be provided.");
    }

    if (screenWidth > 1200) return true;
    return false;
  }

  static TextTheme textStyle(BuildContext context) =>
      Theme.of(context).textTheme;

  static ColorScheme colorScheme(BuildContext context) =>
      Theme.of(context).colorScheme;

  static TextStyle movingTextStyle(BuildContext context) =>
      AppTheme.movingTextStyle(Theme.of(context).brightness);
}
