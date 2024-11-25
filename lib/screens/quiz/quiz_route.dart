import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_app/routes/app_route.dart';
import 'package:kid_app/screens/quiz/quiz_page.dart';

import 'quiz_binding.dart';

class QuizRoute extends AppRouteable {
  @override
  Route createRoute(RouteSettings settings) {
    return GetPageRoute(
      settings: settings,
      binding: QuizBinding(),
      page: () => QuizPage(),
      transition: Transition.rightToLeft,
      transitionDuration: AppRoute.getDuration(Transition.rightToLeft),
    );
  }
}