import 'package:flutter/material.dart';

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
          icon: const Icon(
            Icons.close,
            color: Color(0xFF4756DF),
          ),
        ),
      ),
      body: Center(child: HomePageActions(onNavigate: onNavigate)),
    );
  }
}
