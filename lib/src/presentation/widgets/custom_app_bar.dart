import '../../core/util.dart';
import 'home_page_actions.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function(GlobalKey, bool) onNavigate;

  const CustomAppBar({
    super.key,
    required this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'JANE DOE',
        style: TextStyle(
          fontSize: 22,
          color: Color(0xFF4756DF),
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 2,
      actions: [
        Utils.isMobile(context)
            ? Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0xFF4756DF),
                    size: 30,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              )
            : HomePageActions(
                onNavigate: onNavigate,
              ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
