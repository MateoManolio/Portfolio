import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../core/util.dart';
import 'home_page_actions.dart';

class MyDrawer extends StatelessWidget {
  final Function(GlobalKey, bool) onNavigate;

  const MyDrawer({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Utils.colorScheme(context).primary,
          ),
        ),
      ),
      body: Center(
          child: HomePageActions(
        onNavigate: onNavigate,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
            onNavigate(Utils.homeKey, true);
          },
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
          ),
          child: Text(S.of(context).appbar_home,
              style: Utils.textStyle(context).titleMedium),
        ),
      )),
    );
  }
}
