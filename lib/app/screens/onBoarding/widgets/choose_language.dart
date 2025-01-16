import 'package:flutter/material.dart';
import 'package:learning_app/core/utils/images.dart';

import '../../../../generated/l10n.dart';
import '../../../domain/app_language_cubit/language_state.dart';
import 'language_item.dart';

Future<dynamic> chooselanguage(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return SizedBox(
        height: 200,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            languageItem(context, S.of(context).page1_english, englishLogo,
                LanguageState.en),
            languageItem(context, S.of(context).page1_arabic, arabicLogo,
                LanguageState.ar),
            languageItem(context, S.of(context).page1_german, germanLogo,
                LanguageState.de),
          ],
        ),
      );
    },
  );
}
