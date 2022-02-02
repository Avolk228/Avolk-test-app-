import 'package:AvolkTestApp/UI/ad_resourses/ad_settings.dart';
import 'package:AvolkTestApp/UI/ad_resourses/ad_strings.dart';
import 'package:AvolkTestApp/resources/app_colors.dart';
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

  @override
  Widget build(BuildContext context) {
    return Column(
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
          height: 16,
          margin: AdTextParameters.adressMargin,
          color: Colors.black,
        ),
        TextBox(
          data: AdStrings.mapString,
          width: 331,
          height: 16,
          margin: AdTextParameters.mapMargin,
          color: AppColors.mainColor,
        ),
        TextBox(
          data: AdStrings.descriptionString,
          width: 331,
          height: 109,
          margin: AdTextParameters.descriptionMargin,
          color: Colors.black,
          isDescription: true,
        )
      ],
    );
  }
}
