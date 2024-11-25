import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_route.dart';
import 'indice_binding.dart';
import 'indice_page.dart';

class IndiceRoute extends AppRouteable {
  @override
  Route createRoute(RouteSettings settings) {
    return GetPageRoute(
      settings: settings,
      page: () => const IndicePage(),
      binding: IndiceBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}