import 'package:AvolkTestApp/resources/info_part_strings.dart';
import 'package:AvolkTestApp/widgets/info_row.dart';
import 'package:flutter/cupertino.dart';

class InfoPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoRow(
            title: InfoPartTitleStrings.adID, data: InfoPartDataStrings.adID),
        InfoRow(
            title: InfoPartTitleStrings.gender,
            data: InfoPartDataStrings.gender),
        InfoRow(
            title: InfoPartTitleStrings.startDate,
            data: InfoPartDataStrings.startDate),
        InfoRow(
            title: InfoPartTitleStrings.finalDate,
            data: InfoPartDataStrings.finalDate),
        InfoRow(
            title: InfoPartTitleStrings.owner, data: InfoPartDataStrings.owner),
      ],
    );
  }
}
