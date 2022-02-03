import 'package:AvolkTestApp/UI/ad_resourses/ad_settings.dart';
import 'package:AvolkTestApp/resources/app_colors.dart';
import 'package:AvolkTestApp/widgets/text_box.dart';
import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  final String title;
  final String data;

  InfoRow({required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextBox(
            data: title,
            fontSize: 12,
            margin: AdTextParameters.infoTitleMargin,
            color: AppColors.infoPartTitlecolor),
        TextBox(
            data: data,
            fontSize: 12,
            margin: AdTextParameters.infoDataMargin,
            color: Colors.black),
      ],
    );
  }
}
