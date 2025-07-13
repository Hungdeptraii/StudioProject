import 'package:cmc_food/features/personalization/screen/settings/settings.dart';
import 'package:cmc_food/features/shop/screens/home/home.dart';
import 'package:cmc_food/features/shop/screens/wishlist/wishlist.dart';
import 'package:cmc_food/utils/constants/colors.dart';
import 'package:cmc_food/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/menu/menu.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = CHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? CColors.black : Colors.white,
          indicatorColor: darkMode ? CColors.white.withOpacity(0.1) : CColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Menu'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),

      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

/// Move this class OUTSIDE of the widget
class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final  screens = [
    const HomeScreen(),
    const MenuScreen(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}
