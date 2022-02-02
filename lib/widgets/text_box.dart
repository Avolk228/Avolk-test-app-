import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final double width;
  final double height;
  final String data;
  final List<double> margin;
  final Color color;
  bool dscrp = false;
  bool map = false;
  TextBox({
    required this.data,
    required this.width,
    required this.height,
    required this.margin,
    required this.color,
    bool isDescription = false,
    bool isMap = false,
  }) {
    dscrp = isDescription;
    map = isMap;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        data,
        style: TextStyle(
          color: color,
          height: 1.3,
          fontWeight: dscrp ? FontWeight.w300 : FontWeight.normal,
          letterSpacing: map ? 0.2 : 0.4,
        ),
      ),
      width: width,
      height: height,
      margin: EdgeInsets.only(
          top: margin[0], left: margin[1], bottom: margin[2], right: margin[3]),
    );
  }
}
