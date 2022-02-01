import 'package:flutter/material.dart';
import 'package:AvolkTestApp/resources/app_colors.dart';

import 'ad_screen.dart';

class MainPage extends StatelessWidget {
  final String title;
  MainPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        title: Text(
          title,
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AdScreen(
                  title: 'Назад',
                ),
              ),
            );
          },
          child: Text(
            'Перейти на экран с объявлением',
            style: TextStyle(color: AppColors.mainColor),
          ),
        ),
      ),
    );
  }
}
