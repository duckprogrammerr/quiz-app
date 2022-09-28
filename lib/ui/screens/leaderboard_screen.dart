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
          padding:
              const EdgeInsets.symmetric(horizontal: AppStyle.padddin - 10),
          children: [
            const SizedBox(height: AppStyle.padddin),
            SvgPicture.asset('assets/images/logo.svg'),
            const SizedBox(height: AppStyle.padddin * 2),
            const Text(
              'قائمة المتصدرين',
              style: AppStyle.titleTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppStyle.padddin),
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: quizController.topPlayers.length,
                  itemBuilder: (context, index) => PlayerWidget(
                    index: index + 1,
                    name: quizController.topPlayers[index].name,
                    score: quizController.topPlayers[index].score.toString(),
                  ),
                )),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({
    Key? key,
    required this.index,
    required this.name,
    required this.score,
  }) : super(key: key);
  final int index;

  final String name;
  final String score;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppStyle.padddin / 3),
      padding: const EdgeInsets.all(AppStyle.padddin - 5),
      decoration: BoxDecoration(
          border: Border.all(color: AppStyle.blackColor, width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$index',
            style: AppStyle.bodyTextStyle,
          ),
          Text(
            name,
            style: AppStyle.bodyTextStyle,
          ),
          Text(
            score,
            style: AppStyle.bodyTextStyle,
          ),
        ],
      ),
    );
  }
}
