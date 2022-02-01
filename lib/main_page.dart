import 'package:flutter/material.dart';
import 'package:test1/resources/app_colors.dart';

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
      body: Column(
        children: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AdScreen(
                              title: '',
                            )));
              },
              child: const Text('Перейти на экран с объявлением'))
        ],
      ),
    );
  }
}
