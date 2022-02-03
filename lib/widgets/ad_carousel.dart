import 'package:AvolkTestApp/UI/ad_resourses/ad_strings.dart';
import 'package:AvolkTestApp/resources/images.dart';
import 'package:AvolkTestApp/widgets/ad.dart';
import 'package:AvolkTestApp/widgets/similar_ad.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class AdCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 350),
      items: [
        SimilarAd(
            image: Images.imgList[0],
            title: SimilarAdStrings.title1,
            description: SimilarAdStrings.description1,
            date: SimilarAdStrings.date1),
        SimilarAd(
            image: Images.imgList[1],
            title: SimilarAdStrings.title2,
            description: SimilarAdStrings.description2,
            date: SimilarAdStrings.date2),
      ],
    );
  }
}
