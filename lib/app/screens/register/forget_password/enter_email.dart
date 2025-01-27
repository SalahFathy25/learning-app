import 'package:flutter/material.dart';
import 'package:learning_app/app/screens/register/widgets/custom_text_field.dart';

import '../../../../generated/l10n.dart';

class EnterEmail extends StatelessWidget {
  EnterEmail({super.key});
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).forgot_password),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomTextField(
            controller: emailController,
            title: S.of(context).email_address,
            titleBool: false,
            hintText: S.of(context).email_address_hint,
            icon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
          ),
        ]),
      ),
    );
  }
}
