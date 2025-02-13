import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';
import '../../../core/util.dart';
import 'widgets/hard_skills.dart';
import 'widgets/soft_skills.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(S.of(context).skills_title,
              style: Utils.textStyle(context).displayLarge),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            S.of(context).skills_soft,
            style: Utils.textStyle(context).titleLarge,
            textAlign: TextAlign.start,
          ),
        ),
        SoftSkills(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            S.of(context).skills_hard,
            style: Utils.textStyle(context).titleLarge,
            textAlign: TextAlign.start,
          ),
        ),
        HardSkills(),
      ],
    );
  }
}
