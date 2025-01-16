import 'package:flutter/material.dart';
import 'package:learning_app/app/widgets/my_sized_box.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/images.dart';
import '../../../../../generated/l10n.dart';
import '../../widgets/custom_text_field.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Image.asset(
            loginImage,
            height: 150,
          ),
          Text(
            S.of(context).login_page_title,
            style: theme.textTheme.headlineMedium?.copyWith(
              color: primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
          mySizedBox(height: 20),
          CustomTextField(
            title: S.of(context).email_address,
            hintText: S.of(context).email_address_hint,
            icon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
          ),
          mySizedBox(height: 20),
          CustomTextField(
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
              onPressed: () {},
              child: Text(
                S.of(context).forgot_password,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: primaryColor,
                ),
              ),
            ),
          ),
          mySizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(double.infinity, 50),
            ),
            child: Text(
              S.of(context).login,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          mySizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: theme.dividerColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  S.of(context).or,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.dividerColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: theme.dividerColor,
                ),
              )
            ],
          ),
          mySizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(facebookLogoImage),
                ),
              ),
              mySizedBox(height: 10),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(googleLogoImage),
                ),
              ),
            ],
          ),
          mySizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).not_member,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                child: Text(
                  S.of(context).sign_up,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
