import 'package:flutter/cupertino.dart';
import 'package:kid_app/gen/colors.dart';

import '../../../gen/assets.dart';

enum BottomNavigationItem { home, dice, coin }

extension BottomNavigationExtension on BottomNavigationItem {
  Widget tabItem({required bool isSelected, required double width}) {
    final color = isSelected ? ColorName.purpleLight : ColorName.greyPurple;
    final colorFilter = ColorFilter.mode(color, BlendMode.srcIn);

    switch (this) {
      case BottomNavigationItem.home:
        return Assets.images.bottom1
            .svg(width: width, height: width, colorFilter: colorFilter);

      case BottomNavigationItem.dice:
        return Assets.images.bottom2
            .svg(width: width, height: width, colorFilter: colorFilter);

      case BottomNavigationItem.coin:
        return Assets.images.bottom3
            .svg(width: width, height: width, colorFilter: colorFilter);
    }
  }
}


