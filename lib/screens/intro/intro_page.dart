import 'package:flutter/material.dart';
import 'package:kid_app/routes/app_navigate.dart';
import 'package:kid_app/style/text_style.dart';

import '../../gen/assets.dart';
import '../../gen/colors.dart';
import '../../widget/button/app_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [ColorName.purple, ColorName.purpleDark],
        ),
      ),
      child: drawViewBackGroundIntro(),
    );
  }

  Widget drawViewBackGroundIntro() {
    return Stack(
      children: [
        Positioned(
            top: 75,
            child: Assets.images.bookAndGlobal.image(width: 426, height: 426)),
        Positioned(
            top: 0,
            right: 0,
            child: Assets.images.coins1.image(width: 123, height: 123)),
        Positioned(
            top: 20,
            left: -23,
            child: Assets.images.educationBook.image(width: 150, height: 150)),
        Positioned(
            top: 50,
            left: 147,
            child: Assets.images.coins2.image(width: 53, height: 53)),
        Positioned(
            top: 225,
            right: 40,
            child: Assets.images.coins3.image(width: 36, height: 36)),
        Positioned(
            top: 420,
            left: 40,
            child: Assets.images.coins4.image(width: 42, height: 42)),
        Positioned(
            top: 430,
            right: 40,
            child: Assets.images.bookStack.image(width: 116, height: 116)),
        Positioned(bottom: 0, right: 0, left: 0, child: viewBottom())
      ],
    );
  }

  Widget viewBottom() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome \nto FunQuiz Academy',
              style: text25White),
          const SizedBox(
            height: 20,
          ),
          Text('Play, Learn, and Explore with Exciting \nQuizzes',
              style: text12ThinWhite),
          const SizedBox(
            height: 20,
          ),
          AppButton(
            onClick: () {
              AppNavigate.instance.initApp();
            }, text: 'GET STARTED',
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
