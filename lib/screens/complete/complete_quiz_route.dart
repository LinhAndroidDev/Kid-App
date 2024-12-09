import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_app/routes/app_route.dart';

import 'complete_quiz_binding.dart';
import 'complete_quiz_page.dart';

class CompleteQuizRoute extends AppRouteable {
  @override
  Route createRoute(RouteSettings settings) {
    return GetPageRoute(
      settings: settings,
      page: () => const CompleteQuizPage(),
      binding: CompleteQuizBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 300)
    );
  }
}