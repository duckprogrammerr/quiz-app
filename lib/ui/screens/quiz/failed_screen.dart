import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/ui/screens/main_screen.dart';
import 'package:quiz_app/ui/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/ui/widgets/custom_button.dart';
import 'package:quiz_app/utils/app_style.dart';

class FailedScreen extends StatelessWidget {
  const FailedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SvgPicture.asset('assets/images/logo.svg')),
      body: Padding(
        padding: const EdgeInsets.all(AppStyle.padddin - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: SvgPicture.asset('assets/icons/exit.svg'),
                onPressed: () => Get.off(
                  () => const MainScreen(),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              height: 100,
              child:
                  Image.asset('assets/icons/sad-emoji.png', fit: BoxFit.cover),
            ),
            const SizedBox(
              height: AppStyle.padddin,
            ),
            const Text('اجابة خاطئة', style: AppStyle.titleTextStyle),
            const Spacer(),
            CustomButton(
              padding: AppStyle.padddin * 3.5,
              text: 'حاول مره اخرى',
              onPressed: () {
                Get.off(const QuizScreen());
              },
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
