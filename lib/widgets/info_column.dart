import 'package:AvolkTestApp/UI/ad_resourses/ad_settings.dart';
import 'package:AvolkTestApp/resources/app_colors.dart';
import 'package:AvolkTestApp/resources/info_part_strings.dart';
import 'package:AvolkTestApp/widgets/text_box.dart';
import 'package:flutter/material.dart';

class InfoColumn extends StatelessWidget {
  bool flag = true;
  InfoColumn.title();
  InfoColumn.data() {
    flag = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextBox(
            data: flag ? InfoPartTitleStrings.adID : InfoPartDataStrings.adID,
            fontSize: 12,
            margin: AdTextParameters.infoTitleMargin,
            color: flag ? AppColors.infoPartTitlecolor : Colors.black),
        TextBox(
            data:
                flag ? InfoPartTitleStrings.gender : InfoPartDataStrings.gender,
            fontSize: 12,
            margin: AdTextParameters.infoTitleMargin,
            color: flag ? AppColors.infoPartTitlecolor : Colors.black),
        TextBox(
            data: flag
                ? InfoPartTitleStrings.startDate
                : InfoPartDataStrings.startDate,
            fontSize: 12,
            margin: AdTextParameters.infoTitleMargin,
            color: flag ? AppColors.infoPartTitlecolor : Colors.black),
        TextBox(
            data: flag
                ? InfoPartTitleStrings.finalDate
                : InfoPartDataStrings.finalDate,
            fontSize: 12,
            margin: AdTextParameters.infoTitleMargin,
            color: flag ? AppColors.infoPartTitlecolor : Colors.black),
        TextBox(
            data: flag ? InfoPartTitleStrings.owner : InfoPartDataStrings.owner,
            fontSize: 12,
            margin: AdTextParameters.infoTitleMargin,
            color: flag ? AppColors.infoPartTitlecolor : Colors.black),
      ],
    );
  }
}
