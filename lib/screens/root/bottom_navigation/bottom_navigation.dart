import 'package:flutter/material.dart';
import 'package:kid_app/screens/root/bottom_navigation/bottom_navigation_item.dart';

import '../../../gen/colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {super.key, required this.currentTab, required this.onSelectTab});

  final BottomNavigationItem currentTab;
  final ValueChanged<BottomNavigationItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorName.white,
      items: BottomNavigationItem.values.map(_buildItem).toList(),
      currentIndex: currentTab.index,
      onTap: (index) => onSelectTab(
        BottomNavigationItem.values[index],
      ),
    );
  }

  BottomNavigationBarItem _buildItem(BottomNavigationItem item) {
    return BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: item.tabItem(isSelected: item == currentTab, width: 30),
        ),
        label: '');
  }
}
