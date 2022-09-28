import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/models/player.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/services/api/quiz_api.dart';
import 'package:quiz_app/services/database/local_database.dart';

class QuizController extends GetxController {
  // variables needed when the  quiz start
  PageController pageController = PageController();
  var timer = ''.obs;
  var skipAbility = true.obs;
  var score = 0.obs;
  var questions = <Question>[].obs;

  var topPlayers = <Player>[].obs;
  var token = '';
  @override
  onInit() {
    token = LocalDatabase().token.val;

    getQuestions();
    super.onInit();
  }

  getTopPlayers() async {
    List<Player> data = await QuizApi().fetchTopScores(token);
    topPlayers.value = data;
  }

  startTimer() {
    var sec = 0;
    var duration = const Duration(minutes: 2);
    Timer.periodic(const Duration(seconds: 1), (_) {
      sec++;
      var count = duration.inSeconds - sec;

      if (count >= 0) {
        timer.value =
            '${count ~/ 60}:${(count.remainder(60)).toString().padLeft(2, '0')}';
      } else {
        _.cancel();
      }
    });
  }

  getQuestions() async {
    List<Question> data = await QuizApi().fetchQuestions(token);
    questions.value = data;
  }

  selectChoice(int questionIndex, String choice) {
    if (choice == questions[questionIndex].correct) {
      score.value++;
      pageController.jumpToPage(
        score.value,
      );
    }
  }

  skipQuestion() {
    skipAbility.value = false;
    score.value++;
    pageController.jumpToPage(
      score.value,
    );
  }

  updateScore() async {
    await QuizApi().updateUserScore(token, score.value.toString());
  }
}
