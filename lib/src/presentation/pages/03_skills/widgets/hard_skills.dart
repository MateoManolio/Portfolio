import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';
import '../../../widgets/separator.dart';
import 'moving_text.dart';
import '../../../../core/util.dart';

class HardSkills extends StatefulWidget {
  const HardSkills({super.key});

  @override
  State<HardSkills> createState() => _HardSkillsState();
}

class _HardSkillsState extends State<HardSkills> {
  late List<String> hardSkills;

  int _movingTextDelay(BuildContext context) {
    if (Utils.isMobile(context: context)) return 2500;
    if (Utils.isTablet(context: context)) return 2000;
    return 1500;
  }

  int _movingTextLastRepeat(BuildContext context) {
    if (Utils.isMobile(context: context)) return 3;
    if (Utils.isTablet(context: context)) return 3;
    return 5;
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
      totalDelay += _movingTextDelay(context);
    }

    return totalDelay;
  }

  List<Widget> _getMovingText(List<String> skills, BuildContext context) {
    List<Widget> skillsList = [];
    final screenWidth = Utils.mediaWidth(context);

    final repeatDuration = Duration(
      milliseconds: _calculateDelay(
          skills, skills.length - _movingTextLastRepeat(context), screenWidth),
    );

    for (int i = 0; i < skills.length; i++) {
      skillsList.add(
        MovingText(
          text: skills[i],
          scrollDirection: TextDirection.ltr,
          speed: 1.5,
          initialDelay:
              Duration(milliseconds: _calculateDelay(skills, i, screenWidth)),
          textStyle: Utils.movingTextStyle(context),
          width: screenWidth,
          repeatDuration: repeatDuration,
          leftBorder: 500,
          widgetWidth: 500,
        ),
      );
    }
    return skillsList;
  }

  @override
  Widget build(BuildContext context) {
    hardSkills = [
      S.of(context).skills_hard1,
      S.of(context).skills_hard2,
      S.of(context).skills_hard3,
      S.of(context).skills_hard4,
      S.of(context).skills_hard5,
      S.of(context).skills_hard6,
      S.of(context).skills_hard7,
      S.of(context).skills_hard8,
      S.of(context).skills_hard9,
      S.of(context).skills_hard10,
      S.of(context).skills_hard11,
      S.of(context).skills_hard12,
      S.of(context).skills_hard13,
      S.of(context).skills_hard14,
      S.of(context).skills_hard15,
      S.of(context).skills_hard16,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Separator(height: 50),
        Stack(children: _getMovingText(hardSkills, context)),
        Separator(height: 50),
      ],
    );
  }
}
