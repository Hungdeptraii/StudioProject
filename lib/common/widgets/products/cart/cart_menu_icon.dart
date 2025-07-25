import 'package:cmc_food/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class CCartCounterIcon extends StatelessWidget {
  const CCartCounterIcon({
    super.key,
    required this.onPressed, required this.iconColor,
  });


  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartScreen()), icon:  Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: CColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
                child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: CColors.white, fontSizeFactor: 0.8))
            ),
          ),
        ),
      ],
    );
  }
}