import 'package:flutter/material.dart';
import 'package:learning_app/app/widgets/my_sized_box.dart';
import '../../../../core/utils/colors.dart';

Widget onboardingItem(
    BuildContext context, int index, String title, String description, String imagePath) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        imagePath,
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.contain,
      ),
      mySizedBox(height: 30),
      Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
      ),
      mySizedBox(height: 20),
      Text(
        description,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w500,
              fontSize: 19,
            ),
      ),
    ],
  );
}
