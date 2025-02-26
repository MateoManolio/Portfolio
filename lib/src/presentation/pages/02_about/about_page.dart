import 'package:flutter/material.dart';

import 'package:portfolio/generated/l10n.dart';
import '../../../core/util.dart';
import '../../widgets/separator.dart';
import 'widgets/animated_photo.dart';

class AboutPage extends StatelessWidget {
  static const String name = "/about";

  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = Utils.mediaWidth(context);
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Utils.isMobile(context: context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedPhoto(screenWidth: screenWidth),
                Separator(width: 16),
                Text(S.of(context).about_title,
                    style: Utils.textStyle(context).displayLarge),
                Separator(height: 8),
                Text(
                  S.of(context).about_description,
                  style: Utils.textStyle(context).bodyLarge,
                ),
                Separator(height: 16),
                Text(S.of(context).about_mentions_title,
                    style: Utils.textStyle(context).displayMedium),
                Separator(height: 8),
                ...bulletList(context),
              ],
            )
          : Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(S.of(context).about_title,
                          style: Utils.textStyle(context).displayLarge),
                      Separator(height: 8),
                      Text(
                        S.of(context).about_description,
                        style: Utils.textStyle(context).bodyLarge,
                      ),
                      Separator(height: 16),
                      Text(S.of(context).about_mentions_title,
                          style: Utils.textStyle(context).displayMedium),
                      Separator(height: 8),
                      ...bulletList(context),
                    ],
                  ),
                ),
                Separator(width: 16),
                AnimatedPhoto(screenWidth: screenWidth),
              ],
            ),
    );
  }

  List<Text> bulletList(BuildContext context) {
    final style = Utils.textStyle(context).bodyLarge;
    return [
      Text(
        S.of(context).about_mentions_description,
        style: style,
      )
    ];
  }
}
