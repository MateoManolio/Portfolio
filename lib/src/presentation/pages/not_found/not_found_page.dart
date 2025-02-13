import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../../core/util.dart';
import '../main_page.dart';
import 'widgets/not_found_background_video.dart';

class NotFoundPage extends StatelessWidget {
  static const String name = "/not_found";

  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const NotFoundBackgroundVideo(),
          Positioned(
            bottom: Utils.mediaHeight(context) / 2 - 250,
            left: Utils.mediaWidth(context) / 2 - 75,
            child: ElevatedButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, MainPage.name),
              child: Text(
                S.of(context).not_found_button,
                style: Utils.textStyle(context).titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
