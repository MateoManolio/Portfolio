import 'package:flutter/material.dart';
import 'package:portfolio/src/presentation/widgets/custom_app_bar.dart';
import 'package:provider/provider.dart';

import '../../core/util.dart';
import '../controllers/contact_controller.dart';
import '../controllers/home_controller.dart';
import '../widgets/drawer.dart';
import '02_about/about_page.dart';
import '05_contact/contact_page.dart';
import '01_home/home_page.dart';
import '04_projects/project_page.dart';
import '03_skills/skills_page.dart';

class MainPage extends StatefulWidget {
  static const String name = "/";

  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ScrollController _myScrollController = ScrollController();
  bool isInEnd = false;

  @override
  void initState() {
    _myScrollController.addListener(() {
      if (_myScrollController.offset ==
          _myScrollController.position.maxScrollExtent) {
        setState(() {
          isInEnd = true;
        });
      } else {
        if (isInEnd) {
          setState(() {
            isInEnd = false;
          });
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _myScrollController.dispose();
    super.dispose();
  }

  void scrollToSection(GlobalKey key, bool isMobile) {
    int scrollDur = isMobile ? 800 : 500;
    final context = key.currentContext;
    if (context != null) {
      final box = context.findRenderObject() as RenderBox;
      final offset = box.localToGlobal(Offset.zero) - const Offset(0, 60);

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
      appBar: CustomAppBar(
        onNavigate: scrollToSection,
        controller: _myScrollController,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _myScrollController,
              child: Column(
                children: [
                  HomePage(
                    key: Utils.homeKey,
                    contactCallback: () => scrollToSection(
                      Utils.contactKey,
                      Utils.isMobile(context: context),
                    ),
                    homeController: Provider.of<HomeController>(
                      context,
                      listen: false,
                    ),
                  ),
                  AboutPage(key: Utils.aboutKey),
                  SkillsPage(key: Utils.skillsKey),
                  ProjectPage(key: Utils.projectsKey),
                  ContactPage(
                    key: Utils.contactKey,
                    contactController: Provider.of<ContactController>(
                      context,
                      listen: false,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 40.0,
              bottom: 40.0,
              child: AnimatedOpacity(
                opacity: isInEnd ? 1.0 : 0.0,
                duration: Duration(milliseconds: 200),
                child: FloatingActionButton(
                  onPressed: () {
                    _myScrollController.animateTo(
                      _myScrollController.initialScrollOffset,
                      duration: Duration(
                          milliseconds:
                              Utils.isMobile(context: context) ? 800 : 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Icon(
                    Icons.arrow_upward,
                    color: Utils.colorScheme(context).onSurface,
                    size: 28.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: MyDrawer(
        onNavigate: scrollToSection,
      ),
    );
  }
}
