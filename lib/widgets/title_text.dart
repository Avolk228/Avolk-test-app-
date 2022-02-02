import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  String data = '';
  double size = 0;
  TitleText({String input_data = '', double input_size = 10}) {
    data = input_data;
    size = input_size;
  }
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontSize: size, color: Colors.black, fontFamily: 'MuseoCyrl'),
    );
  }
}
