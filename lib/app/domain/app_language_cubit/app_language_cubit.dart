import 'package:bloc/bloc.dart';
import 'package:learning_app/core/utils/constants.dart';
import 'package:meta/meta.dart';

import 'language_state.dart';

part 'app_language_state.dart';

class AppLanguageCubit extends Cubit<AppLanguageState> {
  AppLanguageCubit() : super(AppLanguageInitial());

  appLanguage(LanguageState languageState) {
    switch (languageState) {
      case LanguageState.initial:
        if (sharedPreferences!.getString('language') != null) {
          if (sharedPreferences!.getString('language') == 'en') {
            emit(AppChangeLanguage(languageCode: 'en'));
          } else if (sharedPreferences!.getString('language') == 'ar'){
            emit(AppChangeLanguage(languageCode: 'ar'));
          }
        }
        break;
      case LanguageState.en:
        sharedPreferences!.setString('language', 'en');
        emit(AppChangeLanguage(languageCode: 'en'));
        break;
      case LanguageState.ar:
        sharedPreferences!.setString('language', 'ar');
        emit(AppChangeLanguage(languageCode: 'ar'));
        break;
      case LanguageState.de:
        sharedPreferences!.setString('language', 'de');
        emit(AppChangeLanguage(languageCode: 'de'));
        break;
    }
  }
}
