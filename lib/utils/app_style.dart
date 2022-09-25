import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppStyle {
  // colors
  static const Color primaryColor = Color(0xffff9b33);
  static const Color whiteColor = Color(0xffFAF8F4);
  static const Color redColor = Color(0xffCC3636);
  static const Color blackColor = Color(0xff1B1A17);

  static const double padddin = 25.0;

  static const TextStyle titleTextStyle = TextStyle(
    color: blackColor,
    fontSize: 23,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle bodyTextStyle = TextStyle(
    color: blackColor,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  // snackbars
  GetSnackBar erorrMsgSnackBar(String text) {
    return GetSnackBar(
      backgroundColor: AppStyle.redColor,
      animationDuration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.all(13),
      borderRadius: 10,
      duration: const Duration(seconds: 1),
      margin: const EdgeInsets.all(20),
      messageText: Container(),
      titleText: Text(
        text,
        textAlign: TextAlign.center,
        style:
            AppStyle.bodyTextStyle.copyWith(fontSize: 19, color: Colors.white),
      ),
    );
  }
}
