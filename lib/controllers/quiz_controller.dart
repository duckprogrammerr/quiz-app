import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:quiz_app/models/player.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/models/score.dart';
import 'package:quiz_app/services/api/quiz_api.dart';
import 'package:quiz_app/services/database/local_database.dart';
import 'package:quiz_app/ui/screens/quiz/failed_screen.dart';
import 'package:quiz_app/ui/screens/quiz/success_screen.dart';

class QuizController extends GetxController {
  // variables needed when the  quiz start
  PageController pageController = PageController();
  var timerText = '2:00'.obs;
  Timer? timer;
  var duration = const Duration(minutes: 2).inSeconds;
  var skipAbility = true.obs;
  var score = 0.obs;
  var questions = <Question>[].obs;
  //
  var topPlayers = <Player>[].obs;
  var token = '';
  @override
  onInit() {
    token = LocalDatabase().token.val;

    getQuestions();
    super.onInit();
  }

  getQuestions() async =>
      questions.value = await QuizApi().fetchQuestions(token);

  getTopPlayers() async =>
      topPlayers.value = await QuizApi().fetchTopScores(token);

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      duration--;

      if (duration >= 0) {
        timerText.value =
            '${duration ~/ 60}:${(duration % 60).toString().padLeft(2, '0')}';
      } else {
        if (score.value == 0) {
          Get.off(() => const FailedScreen());
        } else {
          updateScore();
          Get.off(() => const SuccessScreen(), arguments: score);
        }
        _.cancel();
      }
    });
  }

  selectChoice(int questionIndex, String choice) {
    if (choice == questions[questionIndex].correct) {
      if (score.value == 29) {
        score.value++;
        timer!.cancel();
        updateScore();
        Get.off(() => const SuccessScreen(), arguments: score.value);
        score.value = 0;
      } else {
        score.value++;
        pageController.jumpToPage(score.value);
      }
    } else {
      Get.off(() => const FailedScreen(), arguments: score.value);
      timer!.cancel();
    }
  }

  skipQuestion() {
    skipAbility.value = false;
    score.value++;
    pageController.jumpToPage(score.value);
  }

  updateScore() async {
    var quizEndDate =
        DateFormat('h:mm a dd/MM/yyyy').format(DateTime.now()).toString();

    List<dynamic> data = LocalDatabase().userHestory.val;
    data.add(
      Score(score.value, quizEndDate).toJson(),
    );

    LocalDatabase().userHestory.val = data;
    await QuizApi().updateUserScore(token, score.value.toString());
    score.value = 0;
  }
}
