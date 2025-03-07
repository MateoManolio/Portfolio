import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../../../core/util.dart';
import '../../../widgets/separator.dart';
import 'moving_text.dart';

class SoftSkills extends StatelessWidget {
  const SoftSkills({super.key});

  int _movingTextDelay(double screenWidth) {
    if (Utils.isMobile(screenWidth: screenWidth)) return 3400;
    if (Utils.isTablet(screenWidth: screenWidth)) return 3500;
    return 3000;
  }

  int _movingTextLastRepeat(double screenWidth) {
    if (Utils.isMobile(screenWidth: screenWidth)) return 3;
    if (Utils.isTablet(screenWidth: screenWidth)) return 3;
    return 3;
  }

  int _calculateDelay(
    List<String> texts,
    int currentIndex,
    double screenWidth,
  ) {
    if (currentIndex == 0) {
      return 0;
    }

    int totalDelay = 0;
    for (int i = 0; i < currentIndex; i++) {
      totalDelay += _movingTextDelay(screenWidth);
    }

    return totalDelay;
  }

  List<Widget> _getMovingText(List<String> skills, BuildContext context) {
    List<Widget> skillsList = [];
    final screenWidth = Utils.mediaWidth(context);

    final repeatDuration = Duration(
      milliseconds: _calculateDelay(skills,
          skills.length - _movingTextLastRepeat(screenWidth), screenWidth),
    );

    for (int i = 0; i < skills.length; i++) {
      skillsList.add(
        MovingText(
          text: skills[i],
          scrollDirection: TextDirection.rtl,
          speed: 1,
          initialDelay:
              Duration(milliseconds: _calculateDelay(skills, i, screenWidth)),
          textStyle: Utils.movingTextStyle(context),
          width: screenWidth,
          repeatDuration: repeatDuration,
          leftBorder: 1000,
          widgetWidth: 1000,
        ),
      );
    }
    return skillsList;
  }

  @override
  Widget build(BuildContext context) {
    final softSkills = [
      S.of(context).skills_soft1,
      S.of(context).skills_soft2,
      S.of(context).skills_soft3,
      S.of(context).skills_soft4,
      S.of(context).skills_soft5,
      S.of(context).skills_soft6,
      S.of(context).skills_soft7,
      S.of(context).skills_soft8,
      S.of(context).skills_soft9,
      S.of(context).skills_soft10,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Separator(
          height: 50,
        ),
        Stack(
          children: _getMovingText(
            softSkills,
            context,
          ),
        ),
        Separator(
          height: 50,
        ),
      ],
    );
  }
}
