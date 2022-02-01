import 'package:flutter/material.dart';
import 'package:test1/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test app',      
      home: MainPage(title: 'Avolk Test App'),
    );
  }
}


