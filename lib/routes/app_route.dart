import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_app/screens/coin/coin_route.dart';
import 'package:kid_app/screens/complete/complete_quiz_route.dart';
import 'package:kid_app/screens/indice/indice_route.dart';
import 'package:kid_app/screens/intro/intro_route.dart';
import 'package:kid_app/screens/quiz/quiz_route.dart';

import '../screens/home/home_route.dart';
import '../screens/root/root_route.dart';

abstract class AppRouteable<T> {
  Route createRoute(RouteSettings settings) {
    throw UnimplementedError();
  }
}

enum AppRoute {
  intro('/intro'),
  root('/root'),
  home('/home'),
  indices('/indices'),
  coin('/coin'),
  quiz('/quiz'),
  complete('/complete');

  const AppRoute(this.rawValue);

  final String rawValue;

  static AppRoute? getScreenNameByString(String routing) => AppRoute.values
      .firstWhereOrNull((activity) => activity.rawValue == routing);

  static Route? onGenerateRoute(RouteSettings settings) {
    final name = AppRoute.getScreenNameByString(settings.name ?? '');
    if (name == null) {
      return null;
    }
    switch (name) {
      case AppRoute.intro:
        return IntroRoute().createRoute(settings);
      case AppRoute.root:
        return RootRoute().createRoute(settings);
      case AppRoute.home:
        return HomeRoute().createRoute(settings);
      case AppRoute.indices:
        return IndiceRoute().createRoute(settings);
      case AppRoute.coin:
        return CoinRoute().createRoute(settings);
      case AppRoute.quiz:
        return QuizRoute().createRoute(settings);
      case AppRoute.complete:
        return CompleteQuizRoute().createRoute(settings);
    }
  }

  static Duration getDuration(Transition transition) {
    if (transition == Transition.noTransition) {
      return const Duration(milliseconds: 0);
    } else {
      return const Duration(milliseconds: 300);
    }
  }
}
