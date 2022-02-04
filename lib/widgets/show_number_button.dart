import 'package:AvolkTestApp/UI/ad_resourses/ad_strings.dart';
import 'package:AvolkTestApp/resources/app_colors.dart';
import 'package:flutter/material.dart';

void openNumber() {}

class ShowNumberButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            elevation: 16,
            child: Container(
              height: 100,
              width: 360,
              child: ListView(
                children: const <Widget>[
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      AdStrings.phoneNumberString,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      AdStrings.phoneNumber,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 13),
        height: 45,
        alignment: Alignment.center,
        child: const Text(
          AdStrings.numberString,
          style: TextStyle(
            fontSize: 13,
            color: AppColors.numberTextColor,
          ),
        ),
        decoration: const BoxDecoration(
            color: AppColors.numberColor,
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
    );
  }
}
