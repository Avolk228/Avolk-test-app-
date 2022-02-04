import 'package:AvolkTestApp/resources/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:AvolkTestApp/UI/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.title,
      home: MainPage(title: AppStrings.appBar),
    );
  }
}
