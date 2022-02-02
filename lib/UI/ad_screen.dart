import 'package:AvolkTestApp/UI/ad_resourses/ad_strings.dart';
import 'package:AvolkTestApp/widgets/ad.dart';
import 'package:AvolkTestApp/widgets/app_bar_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:AvolkTestApp/resources/app_colors.dart';

class AdScreen extends StatefulWidget {
  final String title;
  AdScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AdScreenState();
}

class _AdScreenState extends State<AdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.mainColor),
          actions: [AppBarIcons()],
          titleSpacing: -9,
          title: Text(
            widget.title,
            style: TextStyle(
              color: AppColors.mainColor,
            ),
          ),
          backgroundColor: Colors.white),
      body: Ad(
        title: AdStrings.titleString,
        adress: AdStrings.adressString,
      ),
    );
  }
}
