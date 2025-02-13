import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../core/enums/language_enum.dart';
import '../../core/providers/locale_provider.dart';
import '../../core/providers/theme_provider.dart';
import '../../core/util.dart';
import 'separator.dart';

class ChangeConfigurationButtons extends StatefulWidget {
  const ChangeConfigurationButtons({super.key});

  @override
  State<ChangeConfigurationButtons> createState() =>
      _ChangeConfigurationButtonsState();
}

class _ChangeConfigurationButtonsState
    extends State<ChangeConfigurationButtons> {
  void _toggleTheme() async {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final newMode = !themeProvider.isLightMode;

    themeProvider.setTheme(newMode);
  }

  void _changeLanguage(Language? newLanguage) {
    if (newLanguage == null) return;

    final localeProvider = Provider.of<LocaleProvider>(context, listen: false);
    localeProvider.setLocale(newLanguage);
  }

  @override
  Widget build(BuildContext context) {
    final currentLanguage = Provider.of<LocaleProvider>(context);
    final theme = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          DropdownButton<Language>(
            borderRadius: BorderRadius.circular(16),
            value: currentLanguage.language,
            icon: const Icon(Icons.arrow_drop_down),
            underline: const SizedBox(),
            items: [
              languageMenuItem(language: Language.en),
              languageMenuItem(language: Language.es),
            ],
            onChanged: _changeLanguage,
          ),
          const SizedBox(width: 16),
          IconButton(
            onPressed: _toggleTheme,
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return RotationTransition(
                  turns: animation,
                  child: child,
                );
              },
              child: Icon(
                theme.isLightMode ? Icons.light_mode : Icons.dark_mode,
                key: ValueKey<bool>(theme.isLightMode),
                color: Utils.colorScheme(context).secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<Language> languageMenuItem({required Language language}) {
    return DropdownMenuItem<Language>(
      value: language,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              language.getFlagAsset(),
              width: 24,
              height: 18,
              fit: BoxFit.contain,
            ),
            const Separator(width: 8),
            Text(
              language.toText(),
              style: Utils.textStyle(context).bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
