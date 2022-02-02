import 'package:AvolkTestApp/widgets/title_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import 'Carousel.dart';

class Ad extends StatelessWidget {
  final String title;
  final String adress;
  Ad({required this.title, required this.adress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Carousel(),
        TitleText(
          input_data: title,
          input_size: 30,
        ),
        Text('123'),
        Text('123'),
        Text('123'),
        Text('123'),
        Text('123'),
      ],
    );
  }
}
