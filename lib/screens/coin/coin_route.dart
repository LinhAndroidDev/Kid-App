import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_app/routes/app_route.dart';
import 'package:kid_app/screens/coin/coin_page.dart';

import 'coin_binding.dart';

class CoinRoute extends AppRouteable {
  @override
  Route createRoute(RouteSettings settings) {
    return GetPageRoute(
      settings: settings,
      page: () => const CoinPage(),
      binding: CoinBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}