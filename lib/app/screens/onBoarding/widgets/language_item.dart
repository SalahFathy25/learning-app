import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/core/utils/constants.dart';

import '../../../domain/app_language_cubit/app_language_cubit.dart';
import '../../../domain/app_language_cubit/language_state.dart';

Widget languageItem(BuildContext context , String title , String imagePath , LanguageState languageState) {
    return ListTile(
      title: Text(
          title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Image.asset(
        imagePath,
        width: 30,
      ),
      onTap: () {
        sharedPreferences?.setString('languageCode', languageState.name);
        BlocProvider.of<AppLanguageCubit>(context)
            .appLanguage(languageState);
        Navigator.pop(context);
      },
    );
  }
