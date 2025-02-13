import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../../../core/util.dart';
import '../../../widgets/separator.dart';
import 'moving_text.dart';

class SoftSkills extends StatelessWidget {
  const SoftSkills({super.key});

  List<Widget> _getMovingText(
    List<String> skills,
    BuildContext context,
  ) {
    List<Widget> softSkillsList = [];
    final delay = Utils.movingTextDelay(context);
    for (int i = 0; i < skills.length; i++) {
      softSkillsList.add(
        MovingText(
          text: skills[i],
          scrollDirection: TextDirection.ltr,
          speed: 1,
          initialDelay: Duration(milliseconds: i * delay),
          textStyle: Utils.movingTextStyle(context),
          width: Utils.mediaWidth(context),
        ),
      );
    }
    return softSkillsList;
  }

  @override
  Widget build(BuildContext context) {
    final softSkills = [
      S.of(context).skills_soft1,
      S.of(context).skills_soft2,
      S.of(context).skills_soft3,
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
