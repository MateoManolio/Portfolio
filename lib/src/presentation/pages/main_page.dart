import 'package:flutter/material.dart';
import 'package:portfolio/src/presentation/widgets/custom_app_bar.dart';

import '../../core/util.dart';
import '../widgets/drawer.dart';
import '02_about/about_page.dart';
import '05_contact/contact_page.dart';
import '01_home/home_page.dart';
import '04_projects/project_page.dart';
import '03_skills/skills_page.dart';

class MainPage extends StatelessWidget {
  static const String name = "/";

  final ScrollController _myScrollController = ScrollController();

  MainPage({super.key});

  void scrollToSection(GlobalKey key, bool isMobile) {
    int scrollDur = isMobile ? 800 : 500;
    final context = key.currentContext;
    if (context != null) {
      final box = context.findRenderObject() as RenderBox;
      final offset = box.localToGlobal(Offset.zero);

      final targetPosition = _myScrollController.offset + offset.dy;

      final goPosition =
          targetPosition < _myScrollController.position.maxScrollExtent
              ? targetPosition
              : _myScrollController.position.maxScrollExtent;

      _myScrollController.animateTo(
        goPosition,
        duration: Duration(milliseconds: scrollDur),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onNavigate: scrollToSection),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _myScrollController,
              child: Column(
                children: [
                  HomePage(key: Utils.homeKey),
                  AboutPage(key: Utils.aboutKey),
                  SkillsPage(key: Utils.skillsKey),
                  ProjectPage(key: Utils.projectsKey),
                  ContactPage(key: Utils.contactKey),
                ],
              ),
            ),
          ],
        ),
      ),
      endDrawer: MyDrawer(
        onNavigate: scrollToSection,
      ),
    );
  }
}
