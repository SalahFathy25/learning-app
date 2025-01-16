import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/app/domain/app_language_cubit/app_language_cubit.dart';
import 'package:learning_app/app/domain/app_language_cubit/language_state.dart';
import 'package:learning_app/app/domain/app_theme_cubit/apptheme_cubit.dart';
import 'package:learning_app/core/utils/constants.dart';
import 'package:learning_app/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/domain/app_theme_cubit/theme_state.dart';
import 'app/screens/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppthemeCubit()..changeTheme(ThemeState.initial),
        ),
        BlocProvider(
          create: (context) =>
              AppLanguageCubit()..appLanguage(LanguageState.initial),
        ),
      ],
      child: BlocBuilder<AppthemeCubit, AppThemeState>(
        builder: (context, themeState) {
          return BlocBuilder<AppLanguageCubit, AppLanguageState>(
            builder: (context, languageState) {
              final theme = (themeState is DarkAppTheme)
                  ? ThemeData.dark()
                  : ThemeData.light();
              final locale = (languageState is AppChangeLanguage &&
                      languageState.languageCode != null)
                  ? Locale(languageState.languageCode!)
                  : const Locale('en');

              return MainApp(theme: theme, locale: locale);
            },
          );
        },
      ),
    );
  }
}
