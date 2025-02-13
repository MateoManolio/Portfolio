import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../../core/util.dart';
import '../../widgets/separator.dart';
import 'widgets/work_card.dart';

class ProjectPage extends StatelessWidget {
  static const String name = "/project";

  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Utils.colorScheme(context).surface,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).projects_title,
              style: Utils.textStyle(context).displayLarge?.copyWith(
                    color: Utils.colorScheme(context).onSurface,
                  )),
          Separator(height: 16),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: Utils.calculateCrossAxisCount(context: context),
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: [
              WorkCard(
                imageUrl: 'assets/images/profile_picture.jpg',
                title: S.of(context).projects_1_title,
                description: S.of(context).projects_1_description,
                isSmallScreen: Utils.isTablet(context: context),
              ),
              WorkCard(
                imageUrl: 'assets/images/profile_picture.jpg',
                title: S.of(context).projects_1_title,
                description: S.of(context).projects_1_description,
                isSmallScreen: Utils.isTablet(context: context),
              ),
              WorkCard(
                imageUrl: 'assets/images/profile_picture.jpg',
                title: S.of(context).projects_1_title,
                description: S.of(context).projects_1_description,
                isSmallScreen: Utils.isTablet(context: context),
              ),
              WorkCard(
                imageUrl: 'assets/images/profile_picture.jpg',
                title: S.of(context).projects_1_title,
                description: S.of(context).projects_1_description,
                isSmallScreen: Utils.isTablet(context: context),
              ),
              WorkCard(
                imageUrl: 'assets/images/profile_picture.jpg',
                title: S.of(context).projects_1_title,
                description: S.of(context).projects_1_description,
                isSmallScreen: Utils.isTablet(context: context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
