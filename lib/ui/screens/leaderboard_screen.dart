import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/quiz_controller.dart';
import 'package:quiz_app/utils/app_style.dart';

class LeaderboradScreen extends StatelessWidget {
  LeaderboradScreen({Key? key}) : super(key: key);
  final QuizController quizController = Get.find();

  @override
  Widget build(BuildContext context) {
    quizController.getTopPlayers();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(AppStyle.padddin / 2),
          children: [
            const SizedBox(height: AppStyle.padddin),
            SvgPicture.asset('assets/images/logo.svg'),
            const SizedBox(height: AppStyle.padddin),
            const Text(
              'قائمة المتصدرين',
              style: AppStyle.titleTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppStyle.padddin),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: quizController.topPlayers.length,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(AppStyle.padddin / 2),
                padding: const EdgeInsets.all(AppStyle.padddin - 5),
                decoration: BoxDecoration(
                    border: Border.all(color: AppStyle.blackColor, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${index + 1}',
                      style: AppStyle.bodyTextStyle,
                    ),
                    Text(
                      quizController.topPlayers[index].name,
                      style: AppStyle.bodyTextStyle,
                    ),
                    Text(
                      quizController.topPlayers[index].score.toString(),
                      style: AppStyle.bodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
