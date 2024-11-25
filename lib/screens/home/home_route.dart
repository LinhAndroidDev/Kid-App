import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_app/routes/app_route.dart';
import 'package:kid_app/screens/home/home_page.dart';

import 'home_binding.dart';

class HomeRoute extends AppRouteable {
  @override
  Route createRoute(RouteSettings settings) {
    return GetPageRoute(
      settings: settings,
      page: () => HomePage(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}