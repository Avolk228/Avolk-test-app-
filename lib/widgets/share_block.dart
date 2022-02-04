import 'package:AvolkTestApp/UI/ad_resourses/ad_settings.dart';
import 'package:AvolkTestApp/UI/ad_resourses/ad_strings.dart';
import 'package:AvolkTestApp/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:AvolkTestApp/widgets/text_box.dart';

void openURL(String flag) {
  switch (flag) {
    case 'vk':
      break;
    case 'share':
      break;
    default:
  }
}

class ShareBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextBox(
          data: AdStrings.shareString,
          fontSize: 16,
          margin: AdTextParameters.shareMargin,
          color: Colors.black,
        ),
        Container(
          margin: EdgeInsets.only(left: 22),
          child: Row(
            children: [
              InkWell(
                onTap: () => openURL('vk'),
                child: Ink(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'lib\\resources\\images\\icons8_vk_64.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: () => openURL('share'),
                child: Ink(
                  height: 60,
                  width: 60,
                  child: const Icon(
                    Icons.share,
                    color: AppColors.mainColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
