import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:portfolio/src/presentation/pages/main_page.dart';
import 'src/config/theme/app_theme.dart';

void main() async {
  usePathUrlStrategy();
  final themeData = await AppTheme.getTheme();
  runApp(MyApp(themeData: themeData));
}

class MyApp extends StatelessWidget {
  final ThemeData themeData;

  const MyApp({super.key, required this.themeData});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: MainPage(),
    );
  }
}
