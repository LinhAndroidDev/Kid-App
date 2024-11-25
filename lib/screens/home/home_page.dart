import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_app/gen/colors.dart';
import 'package:kid_app/routes/app_navigate.dart';
import 'package:kid_app/screens/home/home_controller.dart';
import 'package:kid_app/screens/home/views/item_suggest_quiz.dart';
import 'package:kid_app/screens/home/views/item_unfinish_game.dart';
import 'package:kid_app/style/text_style.dart';
import 'package:kid_app/widget/button_coin.dart';

import '../../utils/utils.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: ColorName.white,
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(width: 15),
              Text('Hello, Moss!', style: textNormal300BlueDark),
              const Spacer(),
              const ButtonCoin(),
              const SizedBox(width: 15),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 15),
              child: Text(
                'What would you like to play \ntoday?',
                style: text18BoldBlueDark,
              )),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
                controller: controller.scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: listSuggestQuiz.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      SizedBox(
                        width: index == 0 ? 15 : 0,
                      ),
                      ItemSuggestQuiz(
                          topic: listSuggestQuiz[index].topic,
                          imageSuggest: listSuggestQuiz[index].suggestImage,
                          numberQuestion: listSuggestQuiz[index].numberQuestion,
                          colorProgress: listSuggestQuiz[index].colorProgress,
                          percentComplete:
                              listSuggestQuiz[index].percentComplete),
                      const SizedBox(
                        width: 5,
                      )
                    ],
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: Row(
                children: List.generate(listSuggestQuiz.length, (index) {
              return Obx(() => Container(
                    margin: const EdgeInsets.only(right: 5),
                    width: 13,
                    height: 4,
                    decoration: BoxDecoration(
                      color: controller.indexScroll.value == index
                          ? ColorName.purpleDark
                          : ColorName.purpleWhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ));
            })),
          ),
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 15, top: 15),
              child: Text(
                'Unfinished Games',
                style: text18BoldBlueDark,
              )),
          ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    ItemUnFinishGame(
                      topicGame: unFinishQuiz[index].topic,
                      imageGame: unFinishQuiz[index].suggestImage,
                      numberQuestion: unFinishQuiz[index].numberQuestion,
                      colorProgress: unFinishQuiz[index].colorProgress,
                      percentComplete: unFinishQuiz[index].percentComplete,
                      onClick: () {
                        AppNavigate.instance
                            .gotoQuizPage(quiz: unFinishQuiz[index]);
                      },
                    ),
                  ],
                );
              },
              itemCount: unFinishQuiz.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics()),
          const SizedBox(
            height: 30,
          )
        ]),
      ),
    ));
  }
}
