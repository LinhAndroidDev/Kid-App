import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_app/routes/app_route.dart';

import 'root_binding.dart';
import 'root_page.dart';

class RootRoute extends AppRouteable {
  @override
  Route createRoute(RouteSettings settings) {
    return GetPageRoute(
      settings: settings,
      page: () => RootPage(),
      binding: RootBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: AppRoute.getDuration(Transition.rightToLeft),
    );
  }
}