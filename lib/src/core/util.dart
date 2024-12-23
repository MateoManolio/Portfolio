import 'package:flutter/widgets.dart';

class Utils {
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600;
  }

  static double mediaHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double mediaWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static final GlobalKey homeKey = GlobalKey();
  static final GlobalKey skillsKey = GlobalKey();
  static final GlobalKey aboutKey = GlobalKey();
  static final GlobalKey projectsKey = GlobalKey();
  static final GlobalKey contactKey = GlobalKey();
}
