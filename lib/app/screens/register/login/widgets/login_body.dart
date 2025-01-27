import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/app/screens/register/widgets/button.dart';
import 'package:learning_app/app/widgets/my_sized_box.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/images.dart';
import '../../../../../generated/l10n.dart';
import '../../../../domain/app_language_cubit/app_language_cubit.dart';
import '../../../../domain/app_theme_cubit/apptheme_cubit.dart';
import '../../../../domain/app_theme_cubit/theme_state.dart';
import '../../../onBoarding/widgets/choose_language.dart';
import '../../forget_password/enter_email.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/logos.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key, required this.theme});

  final ThemeData theme;

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool isDarkTheme = false;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<AppthemeCubit, AppThemeState>(
                  builder: (context, state) {
                    return IconButton(
                      icon: Icon(
                        Icons.brightness_medium,
                        color: primaryColor,
                      ),
                      iconSize: 30,
                      onPressed: () {
                        if (isDarkTheme == true) {
                          sharedPreferences?.setBool('isDarkTheme', false);
                          BlocProvider.of<AppthemeCubit>(context)
                              .changeTheme(ThemeState.light);
                        } else {
                          sharedPreferences?.setBool('isDarkTheme', true);
                          BlocProvider.of<AppthemeCubit>(context)
                              .changeTheme(ThemeState.dark);
                        }
                        setState(
                          () {
                            isDarkTheme = !isDarkTheme;
                          },
                        );
                      },
                    );
                  },
                ),
                BlocBuilder<AppLanguageCubit, AppLanguageState>(
                  builder: (context, state) {
                    return IconButton(
                      icon: Icon(Icons.language, color: primaryColor),
                      iconSize: 30,
                      onPressed: () {
                        chooselanguage(context);
                      },
                    );
                  },
                ),
              ],
            ),
            Image.asset(
              loginImage,
              height: 150,
            ),
            Text(
              S.of(context).login_page_title,
              style: widget.theme.textTheme.headlineMedium?.copyWith(
                color: primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            mySizedBox(height: 20),
            CustomTextField(
              controller: emailController,
              title: S.of(context).email_address,
              hintText: S.of(context).email_address_hint,
              icon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
            ),
            mySizedBox(height: 20),
            CustomTextField(
              controller: passwordController,
              title: S.of(context).password,
              hintText: S.of(context).password_hint,
              icon: Icons.lock_outlined,
              keyboardType: TextInputType.visiblePassword,
              obscure: true,
              enabled: true,
            ),
            mySizedBox(height: 15),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoDialogRoute(
                      context: context,
                      builder: (context) => EnterEmail(),
                    ),
                  );
                },
                child: Text(
                  S.of(context).forgot_password,
                  style: widget.theme.textTheme.bodyMedium?.copyWith(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            mySizedBox(height: 20),
            button(
              context,
              title: S.of(context).login,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  if (emailController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Center(
                            child: Text(S.of(context).email_address_hint)),
                      ),
                    );
                  } else if (passwordController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Center(
                          child: Text(S.of(context).password_hint),
                        ),
                      ),
                    );
                  } else if (emailController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty) {
                    Navigator.pushNamed(context, "/home");
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Center(
                          child: Text(S.of(context).fill_all_fields),
                        ),
                      ),
                    );
                  }
                }
              },
            
            ),
            mySizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: widget.theme.dividerColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    S.of(context).or,
                    style: widget.theme.textTheme.bodySmall?.copyWith(
                      color: widget.theme.dividerColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: widget.theme.dividerColor,
                  ),
                )
              ],
            ),
            mySizedBox(height: 20),
            logos(),
            mySizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).not_member,
                  style: widget.theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  child: Text(
                    S.of(context).sign_up,
                    style: widget.theme.textTheme.bodyLarge?.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
