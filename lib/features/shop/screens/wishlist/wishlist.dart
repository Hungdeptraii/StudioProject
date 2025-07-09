import 'package:cmc_store/common/widgets/appbar/appbar.dart';
import 'package:cmc_store/common/widgets/icons/c_circular_icon.dart';
import 'package:cmc_store/common/widgets/layouts/grid_layout.dart';
import 'package:cmc_store/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../home/home.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CAppBar(
        title: Text("Yêu thích", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              CGridLayout(itemCount: 6, itemBuilder: (_, index) => const CProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
