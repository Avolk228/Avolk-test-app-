import 'package:AvolkTestApp/UI/ad_resourses/ad_settings.dart';
import 'package:AvolkTestApp/UI/ad_resourses/ad_strings.dart';
import 'package:AvolkTestApp/resources/app_colors.dart';
import 'package:AvolkTestApp/resources/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:AvolkTestApp/widgets/text_box.dart';
import 'package:flutter_share/flutter_share.dart';

Future<void> share() async {
  await FlutterShare.share(
      text: AdStrings.adressString +
          '\n' +
          AdStrings.descriptionString +
          '\n' +
          AdStrings.phoneNumberString +
          '\n' +
          AdStrings.phoneNumber,
      title: AdStrings.shareString,
      chooserTitle: AdStrings.shareString);
}

class ShareBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => share(),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 22),
        height: 45,
        alignment: Alignment.center,
        child: const Text(
          AdStrings.shareString,
          style: TextStyle(
            fontSize: 13,
            color: AppColors.numberTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        decoration: const BoxDecoration(
            color: AppColors.numberColor,
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
    );
  }
}
