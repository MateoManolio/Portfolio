import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../../core/util.dart';
import '../../controllers/home_controller.dart';
import '../../widgets/separator.dart';
import 'widgets/background_video.dart';
import 'widgets/custom_button.dart';
import 'widgets/description_text.dart';

class HomePage extends StatelessWidget {
  static const String name = "/home";
  static const double _maxWidth = 1200;
  static const double _maxHeight = 700;

  final Function() contactCallback;
  final HomeController homeController;

  const HomePage({
    super.key,
    required this.contactCallback,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = Utils.isMobile(context: context);
    return Stack(
      children: [
        BackgroundVideo(height: HomePage._maxHeight),
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: _maxWidth,
              maxHeight: _maxHeight,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).home_introduction,
                  style: Utils.textStyle(context).displaySmall,
                  textAlign: isMobile ? TextAlign.center : TextAlign.start,
                ),
                Text(
                  S.of(context).name,
                  style: Utils.textStyle(context)
                      .displayLarge
                      ?.copyWith(fontSize: 60),
                  textAlign: isMobile ? TextAlign.center : TextAlign.start,
                ),
                const Separator(height: 16),
                const DescriptionText(),
                const Separator(height: 32),
                if (isMobile)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 24,
                    children: [
                      CustomButton(
                        onPressed: contactCallback,
                        text: S.of(context).home_contact_button,
                      ),
                      CustomButton(
                        onPressed: () async {
                          final locale = Localizations.localeOf(context);
                          final languageCode = locale.languageCode;
                          final result =
                              await homeController.downloadCV(languageCode);

                          if (result == false && context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  S.of(context).home_error_cv_download,
                                  style: Utils.textStyle(context).titleSmall,
                                ),
                                backgroundColor:
                                    Utils.colorScheme(context).error,
                              ),
                            );
                          }
                        },
                        text: S.of(context).home_cv_button,
                      ),
                    ],
                  )
                else
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 24,
                    children: [
                      CustomButton(
                        onPressed: contactCallback,
                        text: S.of(context).home_contact_button,
                      ),
                      CustomButton(
                        onPressed: () async {
                          final locale = Localizations.localeOf(context);
                          final languageCode = locale.languageCode;
                          final result =
                              await homeController.downloadCV(languageCode);

                          if (result == false && context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  S.of(context).home_error_cv_download,
                                  style: Utils.textStyle(context).titleSmall,
                                ),
                                backgroundColor:
                                    Utils.colorScheme(context).error,
                              ),
                            );
                          }
                        },
                        text: S.of(context).home_cv_button,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
