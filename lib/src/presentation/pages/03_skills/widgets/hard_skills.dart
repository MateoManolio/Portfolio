import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';
import '../../../widgets/separator.dart';
import 'moving_text.dart';
import '../../../../core/util.dart';

class HardSkills extends StatelessWidget {
  const HardSkills({super.key});

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
          scrollDirection: TextDirection.rtl,
          speed: 1.5,
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
    final hardSkills = [
      S.of(context).skills_hard1,
      S.of(context).skills_hard2,
      S.of(context).skills_hard3,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Separator(
          height: 50,
        ),
        Stack(
          children: _getMovingText(
            hardSkills,
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
