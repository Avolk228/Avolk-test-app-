import 'dart:io';

import 'package:AvolkTestApp/resources/images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(),
      items: Images.imgList
          .map((item) => Container(
                child: Center(
                    child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: 471,
                  height: 310,
                )),
              ))
          .toList(),
    );
  }
}
