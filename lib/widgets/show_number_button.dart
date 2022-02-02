import 'package:AvolkTestApp/UI/ad_resourses/ad_strings.dart';
import 'package:AvolkTestApp/resources/app_colors.dart';
import 'package:flutter/material.dart';

class ShowNumberButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: 331,
      height: 45,
      alignment: Alignment.center,
      child: const Text(
        AdStrings.numberString,
        style: TextStyle(
          fontSize: 13,
          color: AppColors.numberTextColor,
        ),
      ),
      decoration: const BoxDecoration(
          color: AppColors.numberColor,
          borderRadius: BorderRadius.all(Radius.circular(5))),
    );
  }
}
