import 'package:AvolkTestApp/UI/ad_resourses/ad_settings.dart';
import 'package:AvolkTestApp/UI/ad_resourses/ad_strings.dart';
import 'package:AvolkTestApp/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:AvolkTestApp/widgets/text_box.dart';

class SimilarAd extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String date;
  SimilarAd(
      {required this.image,
      required this.title,
      required this.description,
      required this.date});

  List<double> m = AdTextParameters.titleMargin;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 389,
          height: 181,
          child: Image.asset(
            image,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 17,
              height: 1.3,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        TextBox(
          data: description,
          fontSize: 12,
          margin: [3, 30, 5, 5],
          color: Colors.black,
        ),
        TextBox(
          data: date,
          fontSize: 12,
          margin: [5, 30, 5, 5],
          color: AppColors.infoPartTitlecolor,
        ),
      ],
    );
  }
}
