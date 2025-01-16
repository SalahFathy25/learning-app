import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:learning_app/generated/l10n.dart';

import 'register/login/login_screen.dart';
import 'register/signup/signup_screen.dart';
import 'splash/circle_animated_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
    required this.theme,
    required this.locale,
  });

  final ThemeData theme;
  final Locale locale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: locale,
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
      },
      home: CircleAnimatedScreen(),
    );
  }
}
