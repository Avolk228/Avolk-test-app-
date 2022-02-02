import 'package:AvolkTestApp/widgets/ad.dart';
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
          actions: [
            SizedBox(width: 15, child: Icon(Icons.favorite_border)),
            SizedBox(
              width: 17,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 10,
                  child: Icon(Icons.arrow_upward),
                ),
                Icon(Icons.space_bar),
              ],
            ),
            SizedBox(
              width: 23,
            )
          ],
          titleSpacing: -9,
          title: Text(
            widget.title,
            style: TextStyle(
              color: AppColors.mainColor,
            ),
          ),
          backgroundColor: Colors.white),
      body: Ad(
        title: 'Пропал кот',
        adress: 'Красноармейская улица, 37, Ростов-на-Дону',
      ),
    );
  }
}
