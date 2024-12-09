import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kid_app/model/question.dart';

import '../../model/quiz.dart';

class QuizController extends GetxController {
  late Timer _timer;
  var seconds = 0;
  var percent = 0.toDouble().obs;
  final time = ''.obs;
  late Quiz quiz;
  final currentQuestion = 0.obs;
  final numberQuestion = 0.obs;
  late Question question;
  final PageController pageController = PageController();

  final scaleNext = 1.0.obs;
  final scalePrevious = 1.0.obs;

  void scaleDown({bool isNext = true}) {
    (isNext) ? scaleNext.value = 0.9 : scalePrevious.value = 0.8;
  }

  void scaleUp({bool isNext = true}) {
    (isNext) ? scaleNext.value = 1.0 : scalePrevious.value = 1.0;
  }

  @override
  void onInit() {
    super.onInit();
    initArgument();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        seconds -= 1;
        calculateTime();
        percent.value = (seconds / quiz.time);
      } else {
        _timer.cancel();
        Get.back(); // Dừng timer khi hết thời gian.
      }
    });
  }

  /// This function will change the current question.
  void changeQuestion({required int position}) {
    currentQuestion.value = position;
    question = quiz.question[currentQuestion.value];
  }

  /// This function will move to the next question.
  void nextQuestion() {
    if (currentQuestion.value < numberQuestion.value - 1) {
      pageController.animateToPage(
        currentQuestion.value + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      changeQuestion(position: currentQuestion.value + 1);
    }
  }

  /// This function will move to the previous question.
  void previousQuestion() {
    if (currentQuestion.value > 0) {
      pageController.animateToPage(
        currentQuestion.value - 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      changeQuestion(position: currentQuestion.value - 1);
    }
  }

  /// This function will check the answer.
  void checkAnswer({required int index}) {
    if (index == question.answerIndex) {
      question.stateAnswer[index] = 1;
      question.enable = false;
    } else {
      question.stateAnswer[index] = 2;
      question.stateAnswer[question.answerIndex] = 1;
      question.enable = false;
    }
    quiz.question[currentQuestion.value] = question;
  }

  /// This function will calculate the time.
  void calculateTime() {
    switch (seconds) {
      case < 10:
        time.value = '0$seconds';
      case >= 10 && < 60:
        time.value = seconds.toString();
      default:
        var sd = seconds % 60;
        time.value = '${seconds ~/ 60}:${(sd < 10) ? '0$sd' : sd}';
    }
  }

  /// This function will initialize the argument.
  void initArgument() {
    quiz = Get.arguments as Quiz;
    for (var i = 0; i < quiz.question.length; i++) {
      quiz.question[i].stateAnswer.clear();
      quiz.question[i].enable = true;
      for (var j = 0; j < quiz.question[i].options.length; j++) {
        quiz.question[i].stateAnswer.add(0);
      }
    }
    quiz.question.shuffle();
    question = quiz.question[currentQuestion.value];
    seconds = quiz.time;
    numberQuestion.value = quiz.question.length;
  }

  @override
  void onClose() {
    super.onClose();
    _timer.cancel();
  }
}
