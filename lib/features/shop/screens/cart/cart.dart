import 'package:cmc_store/common/widgets/icons/c_circular_icon.dart';
import 'package:cmc_store/common/widgets/images/c_rounded_image.dart';
import 'package:cmc_store/common/widgets/texts/c_brand_title_text_with_verified_icon.dart';
import 'package:cmc_store/common/widgets/texts/product_price_text.dart';
import 'package:cmc_store/common/widgets/texts/product_title_text.dart';
import 'package:cmc_store/utils/constants/colors.dart';
import 'package:cmc_store/utils/constants/image_string.dart';
import 'package:cmc_store/utils/constants/sizes.dart';
import 'package:cmc_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CAppBar(showBackArrow: true,title: Text('Giỏ hàng', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
              itemCount: 10,
              separatorBuilder: (_, __) => const SizedBox(height: CSizes.spaceBtwSections),
            itemBuilder: (_, index) =>  Column(
                children: [
                  CCartItem(),
                  SizedBox(height: CSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 70),
                          CProductQuantityWithAddRemoveButton(),
                        ],
                      ),
                      ///them xoa
                      CProductPriceText(price: '7')

                    ],
                  )
                ]
              ),
          ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: Text('Thanh toán \$100')),
      ),
    );
  }
}
