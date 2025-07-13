import 'package:flutter/material.dart';

import 'package:cmc_food/common/widgets/products/cart/add_remove_button.dart';
import 'package:cmc_food/common/widgets/products/cart/cart_item.dart';
import 'package:cmc_food/common/widgets/texts/product_price_text.dart';
import 'package:cmc_food/utils/constants/sizes.dart';

class CCartItems extends StatelessWidget {
  const CCartItems({super.key,  this.showAddRemoveButtons = true,});

  final bool showAddRemoveButtons;
  
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 1,
      separatorBuilder: (_, __) => const SizedBox(height: CSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          const CCartItem(),
          if(showAddRemoveButtons) const SizedBox(height: CSizes.spaceBtwItems),

            if(showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    CProductQuantityWithAddRemoveButton(),
                  ],
                ),
                CProductPriceText(price: '999'),
              ],
            )
        ],
      ),
    );
  }
}
