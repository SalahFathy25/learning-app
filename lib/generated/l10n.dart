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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Confidence in your words`
  String get onBoarding1_title {
    return Intl.message(
      'Confidence in your words',
      name: 'onBoarding1_title',
      desc: '',
      args: [],
    );
  }

  /// `With conversation-based learning, you'll be talking from lesson one`
  String get onBoarding1_desc {
    return Intl.message(
      'With conversation-based learning, you\'ll be talking from lesson one',
      name: 'onBoarding1_desc',
      desc: '',
      args: [],
    );
  }

  /// `Take your time to learn`
  String get onBoarding2_title {
    return Intl.message(
      'Take your time to learn',
      name: 'onBoarding2_title',
      desc: '',
      args: [],
    );
  }

  /// `Develop a habit of learning and make it a part of your daily routine`
  String get onBoarding2_desc {
    return Intl.message(
      'Develop a habit of learning and make it a part of your daily routine',
      name: 'onBoarding2_desc',
      desc: '',
      args: [],
    );
  }

  /// `The lessons you need to learn`
  String get onBoarding3_title {
    return Intl.message(
      'The lessons you need to learn',
      name: 'onBoarding3_title',
      desc: '',
      args: [],
    );
  }

  /// `Using a variety of learning styles to learn and retain`
  String get onBoarding3_desc {
    return Intl.message(
      'Using a variety of learning styles to learn and retain',
      name: 'onBoarding3_desc',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get onBoarding_button {
    return Intl.message(
      'Next',
      name: 'onBoarding_button',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onBoarding_skip {
    return Intl.message(
      'Skip',
      name: 'onBoarding_skip',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `For free, join now and start learning`
  String get login_page_title {
    return Intl.message(
      'For free, join now and start learning',
      name: 'login_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get email_address {
    return Intl.message(
      'Email address',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address`
  String get email_address_hint {
    return Intl.message(
      'Enter your email address',
      name: 'email_address_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get password_hint {
    return Intl.message(
      'Enter your password',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get forgot_password {
    return Intl.message(
      'Forgot password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_button {
    return Intl.message(
      'Login',
      name: 'login_button',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Not a member?`
  String get not_member {
    return Intl.message(
      'Not a member?',
      name: 'not_member',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message(
      'Sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Sign up for free and start learning`
  String get sign_up_page_title {
    return Intl.message(
      'Sign up for free and start learning',
      name: 'sign_up_page_title',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get first_name {
    return Intl.message(
      'First name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your first name`
  String get first_name_hint {
    return Intl.message(
      'Enter your first name',
      name: 'first_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get last_name {
    return Intl.message(
      'Last name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your last name`
  String get last_name_hint {
    return Intl.message(
      'Enter your last name',
      name: 'last_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirm_password {
    return Intl.message(
      'Confirm password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up_button {
    return Intl.message(
      'Sign up',
      name: 'sign_up_button',
      desc: '',
      args: [],
    );
  }

  /// `Already a member?`
  String get already_member {
    return Intl.message(
      'Already a member?',
      name: 'already_member',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next_button {
    return Intl.message(
      'Next',
      name: 'next_button',
      desc: '',
      args: [],
    );
  }

  /// `Completed 1/5`
  String get page1_complete {
    return Intl.message(
      'Completed 1/5',
      name: 'page1_complete',
      desc: '',
      args: [],
    );
  }

  /// `What is your mother language?`
  String get page1_question {
    return Intl.message(
      'What is your mother language?',
      name: 'page1_question',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get page1_english {
    return Intl.message(
      'English',
      name: 'page1_english',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get page1_arabic {
    return Intl.message(
      'Arabic',
      name: 'page1_arabic',
      desc: '',
      args: [],
    );
  }

  /// `French`
  String get page1_french {
    return Intl.message(
      'French',
      name: 'page1_french',
      desc: '',
      args: [],
    );
  }

  /// `German`
  String get page1_german {
    return Intl.message(
      'German',
      name: 'page1_german',
      desc: '',
      args: [],
    );
  }

  /// `Hindi`
  String get page1_hindi {
    return Intl.message(
      'Hindi',
      name: 'page1_hindi',
      desc: '',
      args: [],
    );
  }

  /// `Spanish`
  String get page1_spanish {
    return Intl.message(
      'Spanish',
      name: 'page1_spanish',
      desc: '',
      args: [],
    );
  }

  /// `Italian`
  String get page1_italian {
    return Intl.message(
      'Italian',
      name: 'page1_italian',
      desc: '',
      args: [],
    );
  }

  /// `Portuguese`
  String get page1_portuguese {
    return Intl.message(
      'Portuguese',
      name: 'page1_portuguese',
      desc: '',
      args: [],
    );
  }

  /// `Completed 2/5`
  String get page2_complete {
    return Intl.message(
      'Completed 2/5',
      name: 'page2_complete',
      desc: '',
      args: [],
    );
  }

  /// `What is your main reason for learning ${language}?`
  String page2_question(Object language) {
    return Intl.message(
      'What is your main reason for learning \$$language?',
      name: 'page2_question',
      desc: '',
      args: [language],
    );
  }

  /// `Travel`
  String get page2_travel {
    return Intl.message(
      'Travel',
      name: 'page2_travel',
      desc: '',
      args: [],
    );
  }

  /// `School`
  String get page2_school {
    return Intl.message(
      'School',
      name: 'page2_school',
      desc: '',
      args: [],
    );
  }

  /// `Work`
  String get page2_work {
    return Intl.message(
      'Work',
      name: 'page2_work',
      desc: '',
      args: [],
    );
  }

  /// `Family/Friends`
  String get page2_family {
    return Intl.message(
      'Family/Friends',
      name: 'page2_family',
      desc: '',
      args: [],
    );
  }

  /// `Skill Improvement`
  String get page2_skill_improvement {
    return Intl.message(
      'Skill Improvement',
      name: 'page2_skill_improvement',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get page2_others {
    return Intl.message(
      'Others',
      name: 'page2_others',
      desc: '',
      args: [],
    );
  }

  /// `Completed 3/5`
  String get page3_complete {
    return Intl.message(
      'Completed 3/5',
      name: 'page3_complete',
      desc: '',
      args: [],
    );
  }

  /// `How much do you know about ${language}?`
  String page3_question(Object language) {
    return Intl.message(
      'How much do you know about \$$language?',
      name: 'page3_question',
      desc: '',
      args: [language],
    );
  }

  /// `Not Much`
  String get page3_not_much {
    return Intl.message(
      'Not Much',
      name: 'page3_not_much',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get page3_medium {
    return Intl.message(
      'Medium',
      name: 'page3_medium',
      desc: '',
      args: [],
    );
  }

  /// `Expert`
  String get page3_expert {
    return Intl.message(
      'Expert',
      name: 'page3_expert',
      desc: '',
      args: [],
    );
  }

  /// `Completed 4/5`
  String get page4_complete {
    return Intl.message(
      'Completed 4/5',
      name: 'page4_complete',
      desc: '',
      args: [],
    );
  }

  /// `How old are you?`
  String get page4_question {
    return Intl.message(
      'How old are you?',
      name: 'page4_question',
      desc: '',
      args: [],
    );
  }

  /// `Under 18`
  String get page4_under_18 {
    return Intl.message(
      'Under 18',
      name: 'page4_under_18',
      desc: '',
      args: [],
    );
  }

  /// `18-24`
  String get page4_18_24 {
    return Intl.message(
      '18-24',
      name: 'page4_18_24',
      desc: '',
      args: [],
    );
  }

  /// `25-34`
  String get page4_25_34 {
    return Intl.message(
      '25-34',
      name: 'page4_25_34',
      desc: '',
      args: [],
    );
  }

  /// `35-44`
  String get page4_35_44 {
    return Intl.message(
      '35-44',
      name: 'page4_35_44',
      desc: '',
      args: [],
    );
  }

  /// `45-54`
  String get page4_45_54 {
    return Intl.message(
      '45-54',
      name: 'page4_45_54',
      desc: '',
      args: [],
    );
  }

  /// `55-64`
  String get page4_55_64 {
    return Intl.message(
      '55-64',
      name: 'page4_55_64',
      desc: '',
      args: [],
    );
  }

  /// `65 or older`
  String get page4_65_or_older {
    return Intl.message(
      '65 or older',
      name: 'page4_65_or_older',
      desc: '',
      args: [],
    );
  }

  /// `Completed 5/5`
  String get page5_complete {
    return Intl.message(
      'Completed 5/5',
      name: 'page5_complete',
      desc: '',
      args: [],
    );
  }

  /// `How much time do you have to learn ${language}?`
  String page5_question(Object language) {
    return Intl.message(
      'How much time do you have to learn \$$language?',
      name: 'page5_question',
      desc: '',
      args: [language],
    );
  }

  /// `5min/Day`
  String get page5_5min {
    return Intl.message(
      '5min/Day',
      name: 'page5_5min',
      desc: '',
      args: [],
    );
  }

  /// `15min/Day`
  String get page5_15min {
    return Intl.message(
      '15min/Day',
      name: 'page5_15min',
      desc: '',
      args: [],
    );
  }

  /// `30min/Day`
  String get page5_30min {
    return Intl.message(
      '30min/Day',
      name: 'page5_30min',
      desc: '',
      args: [],
    );
  }

  /// `60min/Day`
  String get page5_60min {
    return Intl.message(
      '60min/Day',
      name: 'page5_60min',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get complete_button {
    return Intl.message(
      'Complete',
      name: 'complete_button',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations`
  String get congratulation {
    return Intl.message(
      'Congratulations',
      name: 'congratulation',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully completed the registration process\nPlease Login or Sign up & start learning`
  String get congratulation_desc {
    return Intl.message(
      'You have successfully completed the registration process\\nPlease Login or Sign up & start learning',
      name: 'congratulation_desc',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_button {
    return Intl.message(
      'Continue',
      name: 'continue_button',
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
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'de'),
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
