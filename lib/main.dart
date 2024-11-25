import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_app/routes/app_route.dart';
import 'package:kid_app/screens/intro/intro_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: IntroBinding(),
      initialRoute: AppRoute.intro.rawValue,
      onGenerateRoute: AppRoute.onGenerateRoute,
      defaultTransition: Transition.noTransition,
    );
  }
}
