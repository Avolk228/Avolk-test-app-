import 'package:AvolkTestApp/UI/ad_resourses/ad_strings.dart';
import 'package:AvolkTestApp/resources/info_part_strings.dart';
import 'package:AvolkTestApp/widgets/info_column.dart';
import 'package:flutter/cupertino.dart';
import 'info_column.dart';

class InfoPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InfoColumn.title(),
        InfoColumn.data(),
      ],
    );
  }
}
