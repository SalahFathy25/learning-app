import 'package:flutter/material.dart';
import 'package:learning_app/app/widgets/my_sized_box.dart';
import 'package:learning_app/core/utils/images.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../generated/l10n.dart';
import '../../widgets/custom_text_field.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Image.asset(
            loginImage,
            height: 100,
          ),
          Text(
            S.of(context).sign_up_page_title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
            textAlign: TextAlign.center,
          ),
          mySizedBox(height: 20),
          CustomTextField(
            title: S.of(context).first_name,
            hintText: S.of(context).first_name_hint,
            icon: Icons.person_outline,
            keyboardType: TextInputType.name,
          ),
          mySizedBox(height: 20),
          CustomTextField(
            title: S.of(context).last_name,
            hintText: S.of(context).last_name_hint,
            icon: Icons.person_outline,
            keyboardType: TextInputType.name,
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
          mySizedBox(height: 20),
          CustomTextField(
            title: S.of(context).confirm_password,
            hintText: S.of(context).password_hint,
            icon: Icons.lock_outlined,
            keyboardType: TextInputType.visiblePassword,
            obscure: true,
            enabled: true,
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
              S.of(context).sign_up,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
                  color: Theme.of(context).dividerColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  S.of(context).or,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).dividerColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Theme.of(context).dividerColor,
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
              mySizedBox(height: 20),
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
                S.of(context).already_member,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: Text(
                  S.of(context).login,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
