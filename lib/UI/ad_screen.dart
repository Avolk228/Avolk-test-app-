import 'package:AvolkTestApp/UI/ad_resourses/ad_strings.dart';
import 'package:AvolkTestApp/widgets/ad.dart';
import 'package:AvolkTestApp/widgets/ad_carousel.dart';
import 'package:AvolkTestApp/widgets/app_bar_icons.dart';
import 'package:AvolkTestApp/widgets/carousel.dart';
import 'package:AvolkTestApp/widgets/info_part.dart';
import 'package:AvolkTestApp/widgets/share_block.dart';
import 'package:AvolkTestApp/widgets/title_text.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Ad(
              title: AdStrings.titleString,
              adress: AdStrings.adressString,
            ),
            ShareBlock(),
            const Divider(
              thickness: 1,
              height: 3,
              color: Colors.grey,
              indent: 22,
              endIndent: 22,
            ),
            InfoPart(),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: TitleText(
                input_data: AdStrings.similar,
                input_size: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AdCarousel(),
          ],
        ),
      ),
    );
  }
}
