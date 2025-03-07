// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Mateo Manolio`
  String get name {
    return Intl.message('Mateo Manolio', name: 'name', desc: '', args: []);
  }

  /// `Home`
  String get appbar_home {
    return Intl.message('Home', name: 'appbar_home', desc: '', args: []);
  }

  /// `About Me`
  String get appbar_about {
    return Intl.message('About Me', name: 'appbar_about', desc: '', args: []);
  }

  /// `Skills`
  String get appbar_skills {
    return Intl.message('Skills', name: 'appbar_skills', desc: '', args: []);
  }

  /// `Projects`
  String get appbar_projects {
    return Intl.message(
      'Projects',
      name: 'appbar_projects',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get appbar_contact {
    return Intl.message('Contact', name: 'appbar_contact', desc: '', args: []);
  }

  /// `Hello, I am`
  String get home_introduction {
    return Intl.message(
      'Hello, I am',
      name: 'home_introduction',
      desc: '',
      args: [],
    );
  }

  /// `I am a systems engineer passionate about innovation and technology. With experience developing high-impact digital solutions and a collaborative approach, I turn ideas into technological realities. Ready to transform the digital future together?`
  String get home_description {
    return Intl.message(
      'I am a systems engineer passionate about innovation and technology. With experience developing high-impact digital solutions and a collaborative approach, I turn ideas into technological realities. Ready to transform the digital future together?',
      name: 'home_description',
      desc: '',
      args: [],
    );
  }

  /// `Contact Me`
  String get home_contact_button {
    return Intl.message(
      'Contact Me',
      name: 'home_contact_button',
      desc: '',
      args: [],
    );
  }

  /// `Download My CV`
  String get home_cv_button {
    return Intl.message(
      'Download My CV',
      name: 'home_cv_button',
      desc: '',
      args: [],
    );
  }

  /// `Error downloading CV, please try again later`
  String get home_error_cv_download {
    return Intl.message(
      'Error downloading CV, please try again later',
      name: 'home_error_cv_download',
      desc: '',
      args: [],
    );
  }

  /// `About Me`
  String get about_title {
    return Intl.message('About Me', name: 'about_title', desc: '', args: []);
  }

  /// `I am Mateo Manolio, a Systems Engineer with a comprehensive vision that blends a solid technical background with an unwavering passion for innovation. My career spans challenging academic projects and professional initiatives at leading companies like Globant SA, where I have developed mobile applications, backend systems, and high-impact digital solutions. With experience in agile environments and mastery of modern technologies, I turn complex ideas into technological realities that drive value.\nBeyond my technical expertise, I am defined by my collaborative approach and commitment to teamwork. I firmly believe that success is born from effective communication, empathy, and the ability to inspire those around me. My experience as a mentor, teaching assistant, and scout leader has enabled me to develop interpersonal skills that enhance creativity and efficiency in any work environment. I am a responsible, dedicated individual in constant pursuit of learning, always ready to tackle new challenges and contribute to mutual growth—both professionally and personally.`
  String get about_description {
    return Intl.message(
      'I am Mateo Manolio, a Systems Engineer with a comprehensive vision that blends a solid technical background with an unwavering passion for innovation. My career spans challenging academic projects and professional initiatives at leading companies like Globant SA, where I have developed mobile applications, backend systems, and high-impact digital solutions. With experience in agile environments and mastery of modern technologies, I turn complex ideas into technological realities that drive value.\nBeyond my technical expertise, I am defined by my collaborative approach and commitment to teamwork. I firmly believe that success is born from effective communication, empathy, and the ability to inspire those around me. My experience as a mentor, teaching assistant, and scout leader has enabled me to develop interpersonal skills that enhance creativity and efficiency in any work environment. I am a responsible, dedicated individual in constant pursuit of learning, always ready to tackle new challenges and contribute to mutual growth—both professionally and personally.',
      name: 'about_description',
      desc: '',
      args: [],
    );
  }

  /// `Mentions`
  String get about_mentions_title {
    return Intl.message(
      'Mentions',
      name: 'about_mentions_title',
      desc: '',
      args: [],
    );
  }

  /// `• Bachelor's in Economics and Administration – Colegio San José (2008–2019) \n • University Programmer Analyst – UNCPBA (2020–2023) \n • Systems Engineering – UNCPBA (2020–2024) \n • Teaching Assistant in Computer Science – UNCPBA (2022) \n • Participation in the Martín Rodríguez Scout Group (2008–2023) and current role as Scout Educator (since 2024)`
  String get about_mentions_description {
    return Intl.message(
      '• Bachelor\'s in Economics and Administration – Colegio San José (2008–2019) \n • University Programmer Analyst – UNCPBA (2020–2023) \n • Systems Engineering – UNCPBA (2020–2024) \n • Teaching Assistant in Computer Science – UNCPBA (2022) \n • Participation in the Martín Rodríguez Scout Group (2008–2023) and current role as Scout Educator (since 2024)',
      name: 'about_mentions_description',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get skills_title {
    return Intl.message('Skills', name: 'skills_title', desc: '', args: []);
  }

  /// `Soft Skills`
  String get skills_soft {
    return Intl.message('Soft Skills', name: 'skills_soft', desc: '', args: []);
  }

  /// `Effective Communication`
  String get skills_soft1 {
    return Intl.message(
      'Effective Communication',
      name: 'skills_soft1',
      desc: '',
      args: [],
    );
  }

  /// `Teamwork`
  String get skills_soft2 {
    return Intl.message('Teamwork', name: 'skills_soft2', desc: '', args: []);
  }

  /// `Leadership`
  String get skills_soft3 {
    return Intl.message('Leadership', name: 'skills_soft3', desc: '', args: []);
  }

  /// `Empathy`
  String get skills_soft4 {
    return Intl.message('Empathy', name: 'skills_soft4', desc: '', args: []);
  }

  /// `Adaptability`
  String get skills_soft5 {
    return Intl.message(
      'Adaptability',
      name: 'skills_soft5',
      desc: '',
      args: [],
    );
  }

  /// `Continuous Learning`
  String get skills_soft6 {
    return Intl.message(
      'Continuous Learning',
      name: 'skills_soft6',
      desc: '',
      args: [],
    );
  }

  /// `Critical Thinking`
  String get skills_soft7 {
    return Intl.message(
      'Critical Thinking',
      name: 'skills_soft7',
      desc: '',
      args: [],
    );
  }

  /// `Time Management`
  String get skills_soft8 {
    return Intl.message(
      'Time Management',
      name: 'skills_soft8',
      desc: '',
      args: [],
    );
  }

  /// `Conflict Resolution`
  String get skills_soft9 {
    return Intl.message(
      'Conflict Resolution',
      name: 'skills_soft9',
      desc: '',
      args: [],
    );
  }

  /// `Proactivity`
  String get skills_soft10 {
    return Intl.message(
      'Proactivity',
      name: 'skills_soft10',
      desc: '',
      args: [],
    );
  }

  /// `Technical Skills`
  String get skills_hard {
    return Intl.message(
      'Technical Skills',
      name: 'skills_hard',
      desc: '',
      args: [],
    );
  }

  /// `Java`
  String get skills_hard1 {
    return Intl.message('Java', name: 'skills_hard1', desc: '', args: []);
  }

  /// `Python`
  String get skills_hard2 {
    return Intl.message('Python', name: 'skills_hard2', desc: '', args: []);
  }

  /// `C++`
  String get skills_hard3 {
    return Intl.message('C++', name: 'skills_hard3', desc: '', args: []);
  }

  /// `C#`
  String get skills_hard4 {
    return Intl.message('C#', name: 'skills_hard4', desc: '', args: []);
  }

  /// `MEAN`
  String get skills_hard5 {
    return Intl.message('MEAN', name: 'skills_hard5', desc: '', args: []);
  }

  /// `Flutter`
  String get skills_hard6 {
    return Intl.message('Flutter', name: 'skills_hard6', desc: '', args: []);
  }

  /// `.NET`
  String get skills_hard7 {
    return Intl.message('.NET', name: 'skills_hard7', desc: '', args: []);
  }

  /// `Azure`
  String get skills_hard8 {
    return Intl.message('Azure', name: 'skills_hard8', desc: '', args: []);
  }

  /// `Docker`
  String get skills_hard9 {
    return Intl.message('Docker', name: 'skills_hard9', desc: '', args: []);
  }

  /// `Git`
  String get skills_hard10 {
    return Intl.message('Git', name: 'skills_hard10', desc: '', args: []);
  }

  /// `PostgreSQL`
  String get skills_hard11 {
    return Intl.message(
      'PostgreSQL',
      name: 'skills_hard11',
      desc: '',
      args: [],
    );
  }

  /// `Agile`
  String get skills_hard12 {
    return Intl.message('Agile', name: 'skills_hard12', desc: '', args: []);
  }

  /// `Algorithms`
  String get skills_hard13 {
    return Intl.message(
      'Algorithms',
      name: 'skills_hard13',
      desc: '',
      args: [],
    );
  }

  /// `OOP`
  String get skills_hard14 {
    return Intl.message('OOP', name: 'skills_hard14', desc: '', args: []);
  }

  /// `SOLID`
  String get skills_hard15 {
    return Intl.message('SOLID', name: 'skills_hard15', desc: '', args: []);
  }

  /// `Angular`
  String get skills_hard16 {
    return Intl.message('Angular', name: 'skills_hard16', desc: '', args: []);
  }

  /// `My Projects`
  String get projects_title {
    return Intl.message(
      'My Projects',
      name: 'projects_title',
      desc: '',
      args: [],
    );
  }

  /// `Keep & Remind`
  String get projects_1_title {
    return Intl.message(
      'Keep & Remind',
      name: 'projects_1_title',
      desc: '',
      args: [],
    );
  }

  /// `Keep & Remind is a mobile app built with Flutter that leverages artificial intelligence to help you manage tasks and goals. Integrated with the Google Gemini API, it allows you to create, edit, and receive automatic reminders for your notes. The app offers a customizable experience with support for multiple themes and localized messages. Its design is based on a Figma prototype, ensuring an intuitive and user-friendly interface.`
  String get projects_1_description {
    return Intl.message(
      'Keep & Remind is a mobile app built with Flutter that leverages artificial intelligence to help you manage tasks and goals. Integrated with the Google Gemini API, it allows you to create, edit, and receive automatic reminders for your notes. The app offers a customizable experience with support for multiple themes and localized messages. Its design is based on a Figma prototype, ensuring an intuitive and user-friendly interface.',
      name: 'projects_1_description',
      desc: '',
      args: [],
    );
  }

  /// `Blazor App`
  String get projects_2_title {
    return Intl.message(
      'Blazor App',
      name: 'projects_2_title',
      desc: '',
      args: [],
    );
  }

  /// `BlazorGameCatalog-BackendAPI is a .NET application designed to manage and display a video game collection. It provides a robust backend with CRUD (Create, Read, Update, Delete) operations for games with properties such as Name, Genre, Price, and Release Date. Integrated with a Blazor frontend, it offers an intuitive interface to manage the game catalog. This project stands out for its focus on data consistency and simplicity, ideal for developers with C# knowledge.`
  String get projects_2_description {
    return Intl.message(
      'BlazorGameCatalog-BackendAPI is a .NET application designed to manage and display a video game collection. It provides a robust backend with CRUD (Create, Read, Update, Delete) operations for games with properties such as Name, Genre, Price, and Release Date. Integrated with a Blazor frontend, it offers an intuitive interface to manage the game catalog. This project stands out for its focus on data consistency and simplicity, ideal for developers with C# knowledge.',
      name: 'projects_2_description',
      desc: '',
      args: [],
    );
  }

  /// `Movie Card`
  String get projects_3_title {
    return Intl.message(
      'Movie Card',
      name: 'projects_3_title',
      desc: '',
      args: [],
    );
  }

  /// `Neon Movies is a Flutter app that allows users to search, view, and save movies using the MovieDB API. Users can explore detailed movie information, manage their favorite list, and receive local notifications. Its intuitive interface and powerful search engine provide a smooth and engaging experience for movie enthusiasts.`
  String get projects_3_description {
    return Intl.message(
      'Neon Movies is a Flutter app that allows users to search, view, and save movies using the MovieDB API. Users can explore detailed movie information, manage their favorite list, and receive local notifications. Its intuitive interface and powerful search engine provide a smooth and engaging experience for movie enthusiasts.',
      name: 'projects_3_description',
      desc: '',
      args: [],
    );
  }

  /// `My Social Red`
  String get projects_4_title {
    return Intl.message(
      'My Social Red',
      name: 'projects_4_title',
      desc: '',
      args: [],
    );
  }

  /// `MySocialRed is a social network developed as part of the Web Development Workshop at UNICEN, using the MEAN stack (MongoDB, Express, Angular, and Node.js). The application supports full CRUD operations for user management, offering an intuitive interface for user registration and access. Additionally, Docker was implemented to streamline deployment and ensure efficient connectivity between the backend and frontend.`
  String get projects_4_description {
    return Intl.message(
      'MySocialRed is a social network developed as part of the Web Development Workshop at UNICEN, using the MEAN stack (MongoDB, Express, Angular, and Node.js). The application supports full CRUD operations for user management, offering an intuitive interface for user registration and access. Additionally, Docker was implemented to streamline deployment and ensure efficient connectivity between the backend and frontend.',
      name: 'projects_4_description',
      desc: '',
      args: [],
    );
  }

  /// `Salud Agile`
  String get projects_5_title {
    return Intl.message(
      'Salud Agile',
      name: 'projects_5_title',
      desc: '',
      args: [],
    );
  }

  /// `SaludAgil2023 is a project developed under the Agile Methods Workshop at UNICEN for the Welfare Secretariat. The application features a Next.js frontend (built on React) and a robust SpringBoot backend using Java and Maven. The agile approach enabled efficient integration between both ends, ensuring a smooth user experience and a quality-driven development process through JUnit testing.`
  String get projects_5_description {
    return Intl.message(
      'SaludAgil2023 is a project developed under the Agile Methods Workshop at UNICEN for the Welfare Secretariat. The application features a Next.js frontend (built on React) and a robust SpringBoot backend using Java and Maven. The agile approach enabled efficient integration between both ends, ensuring a smooth user experience and a quality-driven development process through JUnit testing.',
      name: 'projects_5_description',
      desc: '',
      args: [],
    );
  }

  /// `Trading Bot`
  String get projects_6_title {
    return Intl.message(
      'Trading Bot',
      name: 'projects_6_title',
      desc: '',
      args: [],
    );
  }

  /// `Trading-bot is a Python project developed for the Introduction to Trading Algorithms course. This bot automates stock buying and selling using technical indicators such as Simple Moving Average, Relative Strength Index, Bollinger Bands, and patterns like Hammer and Shooting Star. During testing, it achieved a 3330.16 unit revenue, showcasing its effectiveness in algorithmic trading strategies.`
  String get projects_6_description {
    return Intl.message(
      'Trading-bot is a Python project developed for the Introduction to Trading Algorithms course. This bot automates stock buying and selling using technical indicators such as Simple Moving Average, Relative Strength Index, Bollinger Bands, and patterns like Hammer and Shooting Star. During testing, it achieved a 3330.16 unit revenue, showcasing its effectiveness in algorithmic trading strategies.',
      name: 'projects_6_description',
      desc: '',
      args: [],
    );
  }

  /// `Turno Facil`
  String get projects_7_title {
    return Intl.message(
      'Turno Facil',
      name: 'projects_7_title',
      desc: '',
      args: [],
    );
  }

  /// `TurnoFacil is a web application that streamlines medical appointment scheduling, enabling patients, doctors, and administrative staff to manage bookings quickly and efficiently. Designed for clinics and medical offices, the platform offers an adaptable and easily deployable system. Its intuitive interface enhances schedule management, reduces wait times, and improves the overall user experience, optimizing both administration and patient convenience.`
  String get projects_7_description {
    return Intl.message(
      'TurnoFacil is a web application that streamlines medical appointment scheduling, enabling patients, doctors, and administrative staff to manage bookings quickly and efficiently. Designed for clinics and medical offices, the platform offers an adaptable and easily deployable system. Its intuitive interface enhances schedule management, reduces wait times, and improves the overall user experience, optimizing both administration and patient convenience.',
      name: 'projects_7_description',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact_title {
    return Intl.message('Contact', name: 'contact_title', desc: '', args: []);
  }

  /// `Name`
  String get contact_form_name {
    return Intl.message('Name', name: 'contact_form_name', desc: '', args: []);
  }

  /// `Enter your name`
  String get contact_form_name_empty {
    return Intl.message(
      'Enter your name',
      name: 'contact_form_name_empty',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get contact_form_email {
    return Intl.message(
      'Email',
      name: 'contact_form_email',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get contact_form_email_empty {
    return Intl.message(
      'Invalid email',
      name: 'contact_form_email_empty',
      desc: '',
      args: [],
    );
  }

  /// `Reason for contact`
  String get contact_form_reason {
    return Intl.message(
      'Reason for contact',
      name: 'contact_form_reason',
      desc: '',
      args: [],
    );
  }

  /// `Describe the reason of contact`
  String get contact_form_reason_empty {
    return Intl.message(
      'Describe the reason of contact',
      name: 'contact_form_reason_empty',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get contact_send_button {
    return Intl.message(
      'Send',
      name: 'contact_send_button',
      desc: '',
      args: [],
    );
  }

  /// `Social Media`
  String get contact_social_media {
    return Intl.message(
      'Social Media',
      name: 'contact_social_media',
      desc: '',
      args: [],
    );
  }

  /// `Social Media`
  String get contact_social_social_media {
    return Intl.message(
      'Social Media',
      name: 'contact_social_social_media',
      desc: '',
      args: [],
    );
  }

  /// `Instagram`
  String get contact_social_social_media_instagram {
    return Intl.message(
      'Instagram',
      name: 'contact_social_social_media_instagram',
      desc: '',
      args: [],
    );
  }

  /// `Twitter`
  String get contact_social_social_media_twitter {
    return Intl.message(
      'Twitter',
      name: 'contact_social_social_media_twitter',
      desc: '',
      args: [],
    );
  }

  /// `LinkedIn`
  String get contact_social_social_media_linkedin {
    return Intl.message(
      'LinkedIn',
      name: 'contact_social_social_media_linkedin',
      desc: '',
      args: [],
    );
  }

  /// `GitHub`
  String get contact_social_social_media_github {
    return Intl.message(
      'GitHub',
      name: 'contact_social_social_media_github',
      desc: '',
      args: [],
    );
  }

  /// `Message sent successfully`
  String get snackbar_email_success {
    return Intl.message(
      'Message sent successfully',
      name: 'snackbar_email_success',
      desc: '',
      args: [],
    );
  }

  /// `Error: `
  String get snackbar_error {
    return Intl.message('Error: ', name: 'snackbar_error', desc: '', args: []);
  }

  /// `Please correct the errors in the form`
  String get contact_form_validation_error {
    return Intl.message(
      'Please correct the errors in the form',
      name: 'contact_form_validation_error',
      desc: '',
      args: [],
    );
  }

  /// `The page you are looking for does not exist`
  String get not_found_description {
    return Intl.message(
      'The page you are looking for does not exist',
      name: 'not_found_description',
      desc: '',
      args: [],
    );
  }

  /// `Go back to home`
  String get not_found_button {
    return Intl.message(
      'Go back to home',
      name: 'not_found_button',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
