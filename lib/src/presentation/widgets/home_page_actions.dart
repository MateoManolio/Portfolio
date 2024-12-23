import 'package:flutter/material.dart';

import '../../core/util.dart';

class HomePageActions extends StatelessWidget {
  final Function(GlobalKey, bool) onNavigate;

  const HomePageActions({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Utils.isMobile(context);
    return isMobile
        ? Column(
            children: getWidgets(onNavigate, context, isMobile: true),
          )
        : Row(
            children: getWidgets(onNavigate, context),
          );
  }

  List<Widget> getWidgets(
      Function(GlobalKey, bool) onNavigate, BuildContext context,
      {bool isMobile = false}) {
    return [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            onNavigate(Utils.aboutKey, isMobile);
          },
          child: const Text(
            'About',
            style: TextStyle(
              fontSize: 17,
              color: Color(0xFf4756DF),
              fontWeight: FontWeight.w600,
            ),
          ),
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
          child: const Text(
            'Skills',
            style: TextStyle(
              fontSize: 17,
              color: Color(0xFf4756DF),
              fontWeight: FontWeight.w600,
            ),
          ),
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
          child: const Text(
            'Projects',
            style: TextStyle(
              fontSize: 17,
              color: Color(0xFf4756DF),
              fontWeight: FontWeight.w600,
            ),
          ),
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
          child: const Text(
            'Contact',
            style: TextStyle(
              fontSize: 17,
              color: Color(0xFf4756DF),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      )
    ];
  }
}
