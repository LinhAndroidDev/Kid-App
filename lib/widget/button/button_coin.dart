import 'package:flutter/material.dart';
import 'package:kid_app/gen/colors.dart';
import 'package:kid_app/style/text_style.dart';

import '../../gen/assets.dart';

class ButtonCoin extends StatelessWidget {
  const ButtonCoin(
      {super.key,
      this.colorThumb = ColorName.purpleLight,
      this.colorTrack = ColorName.white,
      this.textColor = ColorName.white});

  final Color colorThumb;
  final Color colorTrack;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: colorThumb,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Container(
              margin:
                  const EdgeInsets.only(left: 8, top: 5, right: 5, bottom: 5),
              child: Text(
                '602',
                style: text12BoldWhite.copyWith(color: textColor) ,
              )),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: colorTrack,
              shape: BoxShape.circle,
            ),
            child: Assets.images.coins5.image(width: 22, height: 22),
          )
        ],
      ),
    );
  }
}
