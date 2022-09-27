import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz_app/ui/screens/launch_screen.dart';
import 'package:quiz_app/utils/app_style.dart';

void main() {
  GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: AppStyle.whiteColor,
          highlightColor: Colors.grey.withOpacity(0.1),
          fontFamily: 'Tajawal',
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
          )),
      textDirection: TextDirection.rtl,
      home: const LaunchScreen(),
    );
  }
}
