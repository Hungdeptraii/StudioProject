import 'package:cmc_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cmc_store/common/widgets/texts/section_heading.dart';
import 'package:cmc_store/utils/constants/sizes.dart';
import 'package:cmc_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_string.dart';

class CBillingPaymentSection extends StatelessWidget {
  const CBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        CSectionHeading(title: 'Phương thức thanh toán', buttonTitle: 'Thay đổi', onPressed: (){}),
        const SizedBox(height: CSizes.spaceBtwItems / 2),
        Row(
          children: [
            CRoundedContainer(
              width: 60,
              height: 60,
              backgroundColor: dark ? CColors.light : CColors.white,
              padding: const EdgeInsets.all(CSizes.sm),
              child: const Image(image: AssetImage(CImages.paypal),fit: BoxFit.contain),
            ),
            const SizedBox(width: CSizes.spaceBtwItems / 2),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge),

          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems / 2),

        Row(
          children: [
            CRoundedContainer(
              width: 60,
              height: 60,
              backgroundColor: dark ? CColors.light : CColors.white,
              padding: const EdgeInsets.all(CSizes.sm),
              child: const Image(image: AssetImage(CImages.vnPay),fit: BoxFit.contain),
            ),
            const SizedBox(width: CSizes.spaceBtwItems / 2),
            Text('VnPay',style: Theme.of(context).textTheme.bodyLarge),

          ],
        )
      ],
    );
  }
}
