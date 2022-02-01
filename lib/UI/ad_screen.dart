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
          actions: [],
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: AppColors.mainColor),
      body: Container(
        child: const Text('123'),
        color: Colors.green[900],
      ),
    );
  }
}
