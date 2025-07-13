import 'package:cmc_food/common/widgets/appbar/appbar.dart';
import 'package:cmc_food/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cmc_food/common/widgets/success_screen/success_screen.dart';
import 'package:cmc_food/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:cmc_food/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:cmc_food/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:cmc_food/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:cmc_food/navigation_menu.dart';
import 'package:cmc_food/utils/constants/image_string.dart';
import 'package:cmc_food/utils/constants/sizes.dart';
import 'package:cmc_food/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/constants/colors.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    final dark  = CHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CAppBar(showBackArrow: true, title: Text('Đơn hàng', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              children: [

                const CCartItems(showAddRemoveButtons: false),
                const SizedBox(height: CSizes.spaceBtwSections),

                CCouponCode(),
                const SizedBox(height: CSizes.spaceBtwSections),

                CRoundedContainer(
                  showBorder: true,
                  padding: const EdgeInsets.all(CSizes.md),
                  backgroundColor: dark ? CColors.black : CColors.white,
                  child: Column(
                    children: [
                      ///gia
                      CBillingAmountSection(),
                      const SizedBox(height: CSizes.spaceBtwItems),

                      const Divider(),
                      const SizedBox(height: CSizes.spaceBtwItems),

                      ///phuong thuc thanh toan
                      CBillingPaymentSection(),
                      SizedBox(height: CSizes.spaceBtwItems),

                      CBillingAddressSection(),
                    ],
                  ),
                )
              ],
            ),
        ),
      ),

    bottomNavigationBar: Padding(
    padding: const EdgeInsets.all(CSizes.defaultSpace),
    child: ElevatedButton(
        onPressed: () => Get.to(
                () =>  SuccessScreen(
                  image: CImages.staticSuccessIllustration,
                  title: 'Thanh toán thành công',
                  subTitle:'Đơn hàng của bạn sẽ được giao ngay!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                ),
        ), 
        child: const Text('Thanh toán \$100')),
    ),
    );
  }
}

