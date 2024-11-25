import 'package:flutter/material.dart';
import 'package:kid_app/style/text_style.dart';

import '../../../gen/colors.dart';

class ItemUnFinishGame extends StatelessWidget {
  const ItemUnFinishGame(
      {super.key,
      required this.topicGame,
      required this.imageGame,
      required this.numberQuestion,
      required this.colorProgress,
      required this.percentComplete,
      required this.onClick});

  final String topicGame;
  final Image imageGame;
  final int numberQuestion;
  final Color colorProgress;
  final double percentComplete;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick.call(),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: ColorName.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: ColorName.greyPurple,
                blurRadius: 5,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: colorProgress),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: imageGame),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topicGame,
                    style: text16BoldBlack,
                  ),
                  Text(
                    topicGame,
                    style: text12ThinBlack,
                  )
                ],
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 45,
                    height: 45,
                    child: CircularProgressIndicator(
                      value: percentComplete,
                      valueColor: AlwaysStoppedAnimation<Color>(colorProgress),
                      backgroundColor: ColorName.greyPurple,
                      strokeWidth: 3,
                    ),
                  ),
                  Text(
                    '${(percentComplete * 100).toInt()}%',
                    style: text12BoldWhite.copyWith(color: colorProgress),
                  )
                ],
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          )),
    );
  }
}
