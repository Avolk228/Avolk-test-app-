import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
    );
  }
}
