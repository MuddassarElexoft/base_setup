import 'package:flutter/material.dart';
import 'package:base_setup/core/constants/assets.dart';
import 'package:base_setup/core/constants/constants.dart';
import 'package:base_setup/core/theme/style.dart';
import 'package:base_setup/core/utils/ui_helper.dart';

import 'bottom_app_bar_item.dart' show BottomBarItem;
/*
 * @Author Muhammad Muddassar
 * @Date 16 June, 2025
*/

class CBottomAppBar extends StatelessWidget {
  const CBottomAppBar({
    super.key,
    this.activeIndex = 0,
    required this.onClickNavItem,
  });

  final int activeIndex;
  final Function(int index) onClickNavItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomAppBarHeight + MediaQuery.paddingOf(context).bottom,
      padding: EdgeInsets.only(bottom: MediaQuery.paddingOf(context).bottom),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Theme.of(context).colorScheme.outline),
        ),
        color: Theme.of(context).colorScheme.surfaceContainerLowest,
        boxShadow: UiHelper.isDark ? null : bottomBarDropShadow,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomBarItem(
            label: "Home",
            isActive: activeIndex == 0,
            svgIcon: activeIndex == 0
                ? AssetsSVG.icHomeActive
                : AssetsSVG.icHome,
            onPress: () {
              onClickNavItem.call(0);
            },
          ),
          BottomBarItem(
            label: "Save",
            isActive: activeIndex == 1,
            svgIcon: activeIndex == 1
                ? AssetsSVG.icSavedActive
                : AssetsSVG.icSaved,
            onPress: () {
              onClickNavItem.call(1);
            },
          ),
          BottomBarItem(
            label: "Account",
            isActive: activeIndex == 2,
            svgIcon: activeIndex == 2
                ? AssetsSVG.icAccountActive
                : AssetsSVG.icAccounts,
            onPress: () {
              onClickNavItem.call(2);
            },
          ),
        ],
      ),
    );
  }
}
