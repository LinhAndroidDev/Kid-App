import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_app/routes/app_route.dart';
import 'package:kid_app/screens/intro/intro_page.dart';

import 'intro_binding.dart';

class IntroRoute extends AppRouteable {
  @override
  Route createRoute(RouteSettings settings) {
    return GetPageRoute(
      settings: settings,
      page: () => const IntroPage(),
      binding: IntroBinding(),
      transition: Transition.noTransition,
      transitionDuration: AppRoute.getDuration(Transition.noTransition),
    );
  }
}