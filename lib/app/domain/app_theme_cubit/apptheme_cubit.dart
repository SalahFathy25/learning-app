import 'package:bloc/bloc.dart';

import '../../../core/utils/constants.dart';
import 'theme_state.dart';

part 'apptheme_state.dart';

class AppthemeCubit extends Cubit<AppThemeState> {
  AppthemeCubit() : super(AppThemeInitial());

  changeTheme(ThemeState state) {
    switch (state) {
      case ThemeState.initial:
        if (sharedPreferences!.getString('theme') != null) {
          if (sharedPreferences!.getString('theme') == 'light') {
            emit(LightAppTheme());
          } else {
            emit(DarkAppTheme());
          }
        }
        break;
      case ThemeState.light:
        sharedPreferences!.setString('theme', 'light');
        emit(LightAppTheme());
        break;
      case ThemeState.dark:
        sharedPreferences!.setString('theme', 'dark');
        emit(DarkAppTheme());
        break;
    }
  }
}
