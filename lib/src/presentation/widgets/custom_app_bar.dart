import 'package:flutter/material.dart';

import 'package:portfolio/generated/l10n.dart';

import '../../core/util.dart';
import 'change_cofiguration_buttons.dart';
import 'home_page_actions.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Function(GlobalKey, bool) onNavigate;
  final ScrollController controller;

  const CustomAppBar({
    super.key,
    required this.onNavigate,
    required this.controller,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool showTitle = false;

  @override
  void initState() {
    widget.controller.addListener(() {
      final homeContext = Utils.homeKey.currentContext;
      if (homeContext != null) {
        final homeBox = homeContext.findRenderObject() as RenderBox;
        final homeHeight = homeBox.size.height;
        setState(() {
          showTitle = widget.controller.offset >= homeHeight - kToolbarHeight;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = Utils.isMobile(context: context);
    return AppBar(
      title: AnimatedOpacity(
        opacity: showTitle ? 1.0 : 0.0,
        duration: Duration(milliseconds: 500),
        child: TextButton(
          onPressed: showTitle
              ? () {
                  widget.onNavigate(Utils.homeKey, false);
                }
              : null,
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
          ),
          child: Text(S.of(context).name,
              style: Utils.textStyle(context).titleMedium),
        ),
      ),
      elevation: 2,
      leadingWidth: isMobile ? 56 : 530,
      leading: Container(
        child: Utils.isMobile(context: context)
            ? Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Utils.colorScheme(context).tertiary,
                    size: 30,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: HomePageActions(
                  onNavigate: widget.onNavigate,
                ),
              ),
      ),
      actions: [
        ChangeConfigurationButtons(),
      ],
    );
  }
}
