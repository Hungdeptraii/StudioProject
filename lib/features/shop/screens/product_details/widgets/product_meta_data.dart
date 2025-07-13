import 'package:cmc_food/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cmc_food/common/widgets/images/c_circlar_image.dart';
import 'package:cmc_food/common/widgets/texts/c_brand_title_text_with_verified_icon.dart';
import 'package:cmc_food/common/widgets/texts/product_price_text.dart';
import 'package:cmc_food/common/widgets/texts/product_title_text.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class CProductMetaData extends StatelessWidget {
  const CProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        ///gia  va giam gia
        Row(
          children: [
            CRoundedContainer(
              radius: CSizes.sm,
              backgroundColor: CColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: CSizes.sm, vertical: CSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: CColors.black)),
            ),
            const SizedBox(width: CSizes.spaceBtwItems),

            ///Gia
            Text('\$20', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: CSizes.spaceBtwItems),
            const CProductPriceText(price: '15', isLarger: true),

          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems / 1.5),

        const CProductTitleText(title: 'Hamburger tôm'),
        const SizedBox(height: CSizes.spaceBtwItems / 1.5),

        Row(
          children: [
            const CProductTitleText(title: 'Trạng thái'),
            const SizedBox(width: CSizes.spaceBtwItems),

            Text('Còn hàng', style: Theme.of(context).textTheme.titleMedium),

          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems / 1.5),

        Row(
          children: [
            CCircularImage(
              image: CImages.burgerIcon,
              width: 32,
              height: 32,

            ),
            const CBrandTitleWithVerifiedIcon(title: 'Burger', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
