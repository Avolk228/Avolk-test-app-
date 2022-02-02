import 'package:AvolkTestApp/UI/ad_resourses/ad_settings.dart';
import 'package:AvolkTestApp/UI/ad_resourses/ad_strings.dart';
import 'package:AvolkTestApp/resources/app_colors.dart';
import 'package:AvolkTestApp/widgets/show_number_button.dart';
import 'package:AvolkTestApp/widgets/text_box.dart';
import 'package:AvolkTestApp/widgets/title_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Carousel.dart';

class Ad extends StatelessWidget {
  final String title;
  final String adress;
  Ad({required this.title, required this.adress});

  List<double> m = AdTextParameters.titleMargin;

  void openURL(String flag) {
    switch (flag) {
      case 'vk':
        break;
      case 'ok':
        break;
      case 'fb':
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Carousel(),
          Container(
            margin: EdgeInsetsDirectional.fromSTEB(m[0], m[1], m[2], m[3]),
            alignment: Alignment.topLeft,
            width: 331,
            height: 30,
            child: TitleText(
              input_data: title,
              input_size: 23,
            ),
          ),
          TextBox(
            data: adress,
            width: 331,
            height: 18,
            margin: AdTextParameters.adressMargin,
            color: Colors.black,
          ),
          TextBox(
            data: AdStrings.mapString,
            width: 331,
            height: 18,
            margin: AdTextParameters.mapMargin,
            color: AppColors.mainColor,
            isMap: true,
          ),
          TextBox(
            data: AdStrings.descriptionString,
            width: 331,
            height: 115,
            margin: AdTextParameters.descriptionMargin,
            color: Colors.black,
            isDescription: true,
          ),
          ShowNumberButton(),
          TextBox(
            data: AdStrings.shareString,
            width: 331,
            height: 20,
            margin: AdTextParameters.shareMargin,
            color: Colors.black,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () => openURL('vk'),
                  icon: Image.asset(
                    'lib\\resources\\images\\icons8_vk_48.png',
                    width: 44.0,
                    height: 44.0,
                  )),
              IconButton(
                onPressed: () => openURL('ok'),
                icon: Image(
                  image: AssetImage('lib\\resources\\images\\icons8_ok_48.png'),
                  width: 44,
                  height: 44,
                ),
              ),
              IconButton(
                onPressed: () => openURL('fb'),
                icon: Image(
                  image: AssetImage(
                      'lib\\resources\\images\\icons8_facebook_64.png'),
                  width: 44,
                  height: 44,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
