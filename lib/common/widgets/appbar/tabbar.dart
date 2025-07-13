import 'package:cmc_food/utils/device/device_utility.dart';
import 'package:cmc_food/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
class CTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? CColors.black : CColors.white,
      child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: CColors.primary,
          labelColor: dark ? CColors.white : Colors.red,
        unselectedLabelColor: CColors.grey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CDeviceUtils.getAppBarHeight());
}
