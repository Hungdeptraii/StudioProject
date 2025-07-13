
import 'package:cmc_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:cmc_store/features/shop/screens/checkout/checkout.dart';
import 'package:cmc_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CAppBar(showBackArrow: true,title: Text('Giỏ hàng', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
          padding:  EdgeInsets.all(CSizes.defaultSpace),
          child: CCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Thanh toán \$100')),
      ),
    );
  }
}
