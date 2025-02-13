import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../core/util.dart';

class HomePageActions extends StatelessWidget {
  final Function(GlobalKey, bool) onNavigate;
  final Widget? leading;

  const HomePageActions({super.key, required this.onNavigate, this.leading});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Utils.isMobile(context: context);
    return isMobile
        ? Column(
            children: getWidgets(
              onNavigate,
              context,
              isMobile: true,
              leading: leading,
            ),
          )
        : Row(
            children: getWidgets(onNavigate, context),
          );
  }

  List<Widget> getWidgets(
      Function(GlobalKey, bool) onNavigate, BuildContext context,
      {bool isMobile = false, Widget? leading}) {
    return [
      Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
          child: leading),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            onNavigate(Utils.aboutKey, isMobile);
          },
          child: Text(S.of(context).appbar_about,
              style: Utils.textStyle(context).titleSmall),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            onNavigate(Utils.skillsKey, isMobile);
          },
          child: Text(S.of(context).appbar_skills,
              style: Utils.textStyle(context).titleSmall),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            onNavigate(Utils.projectsKey, isMobile);
          },
          child: Text(S.of(context).appbar_projects,
              style: Utils.textStyle(context).titleSmall),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            onNavigate(Utils.contactKey, isMobile);
          },
          child: Text(S.of(context).appbar_contact,
              style: Utils.textStyle(context).titleSmall),
        ),
      )
    ];
  }
}
