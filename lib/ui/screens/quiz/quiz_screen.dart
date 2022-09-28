import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/quiz_controller.dart';
import 'package:quiz_app/ui/widgets/custom_button.dart';
import 'package:quiz_app/utils/app_style.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final QuizController quizController = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    quizController.startTimer();
    return Scaffold(
      appBar: AppBar(title: SvgPicture.asset('assets/images/logo.svg')),
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Obx(() => PageView.builder(
              itemCount: quizController.questions.length,
              controller: quizController.pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(AppStyle.padddin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),

                    Obx(() => Text(
                          quizController.timerText.value,
                          style: AppStyle.titleTextStyle.copyWith(fontSize: 30),
                        )),
                    const Spacer(),
                    Text(quizController.questions[index].question,
                        style: AppStyle.titleTextStyle),
                    const Spacer(),
                    //
                    GridView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 1,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      semanticChildCount: 4,
                      children: [
                        ChoiceWidget(
                          text: quizController.questions[index].choices[0],
                          onTap: () => quizController.selectChoice(index, 'a'),
                        ),
                        ChoiceWidget(
                          text: quizController.questions[index].choices[1],
                          onTap: () => quizController.selectChoice(index, 'b'),
                        ),
                        ChoiceWidget(
                          text: quizController.questions[index].choices[2],
                          onTap: () => quizController.selectChoice(index, 'c'),
                        ),
                        ChoiceWidget(
                          text: quizController.questions[index].choices[3],
                          onTap: () => quizController.selectChoice(index, 'd'),
                        ),
                      ],
                    ),
                    //
                    const Spacer(),
                    quizController.skipAbility.value
                        ? CustomButton(
                            padding: AppStyle.padddin * 3,
                            onPressed: () {
                              quizController.skipQuestion();
                            },
                            text: 'Skip')
                        : Container(),
                    const Spacer(flex: 3),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

class ChoiceWidget extends StatelessWidget {
  const ChoiceWidget({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppStyle.blackColor, width: 1),
              borderRadius: BorderRadius.circular(9)),
          child: Center(
            child: Text(text,
                textAlign: TextAlign.center, style: AppStyle.bodyTextStyle),
          ),
        ));
  }
}
