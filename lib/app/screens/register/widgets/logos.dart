import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/images.dart';
import '../../../widgets/my_sized_box.dart';

Widget logos() {
  return Row(
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
      mySizedBox(width: 20),
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
  );
}
