import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_app/gen/colors.dart';
import 'package:kid_app/routes/app_navigate.dart';
import 'package:kid_app/screens/quiz/quiz_controller.dart';
import 'package:kid_app/widget/button/app_button.dart';
import 'package:kid_app/widget/button/button_cancel.dart';
import 'package:kid_app/widget/button/control_button.dart';
import 'package:kid_app/widget/button/button_coin.dart';
import 'package:kid_app/widget/dialog/dialog_confirm_submit.dart';

import '../../style/text_style.dart';

class QuizPage extends StatelessWidget {
  QuizPage({super.key});

  final controller = Get.find<QuizController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [ColorName.purple, ColorName.purpleDark],
        ),
      ),
      child: Obx(() => Stack(
            children: [_buildViewQuiz(context), ..._buildFooter()],
          )),
    ));
  }

  /// Create view quiz
  Widget _buildViewQuiz(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 60,
        ),
        _buildHeader(),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            'Câu hỏi ${controller.currentQuestion.value + 1} trên ${controller.numberQuestion.value}',
            style: textNormal300BlueDark.copyWith(color: ColorName.white),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: controller.pageController,
            itemCount: controller.quiz.question.length,
            itemBuilder: (context, index) {
              return _buildQuestion(index: index);
            },
            onPageChanged: (index) {
              controller.changeQuestion(position: index);
            },
          ),
        ),
      ],
    );
  }

  /// Create view question
  Widget _buildQuestion({required int index}) {
    final question = controller.quiz.question[index];
    return SingleChildScrollView(
      child: Column(
        children: [
          if (question.image.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(
                  left: 15, right: 15, top: 30, bottom: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    question.image,
                    height: 200,
                    fit: BoxFit.fill,
                  )),
            ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              question.question,
              style: text18White,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _buildListAnswer(index: index),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }

  /// Create list answer
  ListView _buildListAnswer({required int index}) {
    final question = controller.quiz.question[index];
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: question.options.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: AppButton(
              onClick: () {
                controller.checkAnswer(index: index);
              },
              text: question.options[index],
              selectCorrect: question.stateAnswer[index],
              isDisable: !question.enable,
            ),
          );
        });
  }

  /// Create header
  Widget _buildHeader() {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(left: 0, child: ButtonCancel()),
          Positioned(
              left: 0,
              right: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      value: controller.percent.value,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(ColorName.white),
                      backgroundColor: Colors.grey,
                      strokeWidth: 2,
                    ),
                  ),
                  Text(controller.time.value, style: text16White)
                ],
              )),
          const Positioned(
              right: 0,
              child: ButtonCoin(
                colorThumb: ColorName.white,
                colorTrack: ColorName.purpleLight,
                textColor: ColorName.black,
              )),
        ],
      ),
    );
  }

  List<Widget> _buildFooter() {
    return [
      if (controller.currentQuestion.value != 0)
        Positioned(
            bottom: 30,
            left: 15,
            child: ControlButton(
              onClick: () => controller.previousQuestion(),
              rotation: 0,
              onScaleUp: () {
                controller.scaleUp(isNext: false);
              },
              onScaleDown: () {
                controller.scaleDown(isNext: false);
              },
              scale: controller.scalePrevious.value,
            )),
      (controller.currentQuestion.value != controller.numberQuestion.value - 1)
          ? Positioned(
              bottom: 30,
              right: 15,
              child: ControlButton(
                onClick: () => controller.nextQuestion(),
                onScaleUp: () {
                  controller.scaleUp();
                },
                onScaleDown: () {
                  controller.scaleDown();
                },
                scale: controller.scaleNext.value,
              ))
          : Positioned(
              bottom: 40,
              right: 15,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  foregroundColor: MaterialStateProperty.all(ColorName.white),
                  elevation: MaterialStateProperty.all(5),
                ),
                  onPressed: () {
                    Get.dialog(
                      barrierColor: ColorName.transparent,
                        barrierDismissible: false, DialogConfirmSubmit(
                      onTapAgree: () {
                        Get.back();
                        AppNavigate.instance.gotoCompleteQuizPage();
                      },
                    ));
                  },
                  child: Text(
                    'Nộp bài',
                    style: text16White.copyWith(color: ColorName.black),
                  ))),
    ];
  }
}
