import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:provider/provider.dart';

import 'package:portfolio/generated/l10n.dart';

import 'src/config/theme/app_theme.dart';
import 'src/core/providers/locale_provider.dart';
import 'src/core/providers/theme_provider.dart';
import 'src/data/repository/cv_repository.dart';
import 'src/data/repository/mail_repository.dart';
import 'src/domain/usecase/download_cv_usecase.dart';
import 'src/domain/usecase/send_mail_usecase.dart';
import 'src/presentation/controllers/contact_controller.dart';
import 'src/presentation/controllers/home_controller.dart';
import 'src/presentation/pages/main_page.dart';
import 'src/presentation/pages/not_found/not_found_page.dart';
import 'src/config/secrets/secrets.dart';

void main() async {
  usePathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: [
      Provider(
        create: (context) => ContactController(
          useCase: SendMailUsecase(
            MailRepository(
              publicKey: Secrets.publicKey,
              privateKey: Secrets.privateKey,
            ),
          ),
        ),
      ),
      Provider(
        create: (context) => HomeController(DownloadCVUseCase(CVRepository())),
      ),
      ChangeNotifierProvider<ThemeProvider>(
        create: (_) => ThemeProvider()..initialize(),
      ),
      ChangeNotifierProvider<LocaleProvider>(
        create: (_) => LocaleProvider()..initialize(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.watch<LocaleProvider>().locale,
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      themeMode: context.watch<ThemeProvider>().themeMode,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: MainPage.name,
      routes: {
        MainPage.name: (context) => MainPage(),
        NotFoundPage.name: (context) => const NotFoundPage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const NotFoundPage(),
      ),
    );
  }
}
