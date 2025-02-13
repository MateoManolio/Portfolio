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

  /// `Mobile Developer and enthusiast of functional design. I create applications with purpose and passion`
  String get home_description {
    return Intl.message(
      'Mobile Developer and enthusiast of functional design. I create applications with purpose and passion',
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

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id nisi sagittis, posuere risus a, luctus nisi. Etiam ac urna at tellus ornare tempor sed ac magna. Etiam enim sem, tempor at elementum sed, convallis nec justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus fringilla vitae orci eget condimentum. Aliquam vitae tortor nibh. Nam interdum, arcu sed feugiat eleifend, ante erat bibendum diam, id tincidunt quam arcu quis quam. In quis fringilla metus. Ut aliquam mauris a maximus imperdiet. Pellentesque blandit tellus a consequat feugiat. Duis volutpat luctus sem tincidunt rhoncus. Quisque fringilla laoreet ligula a malesuada. Vestibulum odio ante, mollis non laoreet vitae, fringilla et felis.`
  String get about_description {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id nisi sagittis, posuere risus a, luctus nisi. Etiam ac urna at tellus ornare tempor sed ac magna. Etiam enim sem, tempor at elementum sed, convallis nec justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus fringilla vitae orci eget condimentum. Aliquam vitae tortor nibh. Nam interdum, arcu sed feugiat eleifend, ante erat bibendum diam, id tincidunt quam arcu quis quam. In quis fringilla metus. Ut aliquam mauris a maximus imperdiet. Pellentesque blandit tellus a consequat feugiat. Duis volutpat luctus sem tincidunt rhoncus. Quisque fringilla laoreet ligula a malesuada. Vestibulum odio ante, mollis non laoreet vitae, fringilla et felis.',
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

  /// `- Eng 2024`
  String get about_mentions_description {
    return Intl.message(
      '- Eng 2024',
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

  /// `Test 1`
  String get skills_soft1 {
    return Intl.message('Test 1', name: 'skills_soft1', desc: '', args: []);
  }

  /// `Test 2`
  String get skills_soft2 {
    return Intl.message('Test 2', name: 'skills_soft2', desc: '', args: []);
  }

  /// `Test 3`
  String get skills_soft3 {
    return Intl.message('Test 3', name: 'skills_soft3', desc: '', args: []);
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

  /// `Test 1`
  String get skills_hard1 {
    return Intl.message('Test 1', name: 'skills_hard1', desc: '', args: []);
  }

  /// `Test 2`
  String get skills_hard2 {
    return Intl.message('Test 2', name: 'skills_hard2', desc: '', args: []);
  }

  /// `Test 3`
  String get skills_hard3 {
    return Intl.message('Test 3', name: 'skills_hard3', desc: '', args: []);
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

  /// `Online Series Una Vide Quita, Oct. 2020`
  String get projects_1_title {
    return Intl.message(
      'Online Series Una Vide Quita, Oct. 2020',
      name: 'projects_1_title',
      desc: '',
      args: [],
    );
  }

  /// `We found the sharpness of the mundane during the pandemic`
  String get projects_1_description {
    return Intl.message(
      'We found the sharpness of the mundane during the pandemic',
      name: 'projects_1_description',
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
