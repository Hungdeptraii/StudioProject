import 'package:cmc_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cmc_store/common/widgets/images/c_rounded_image.dart';
import 'package:cmc_store/common/widgets/texts/product_price_text.dart';
import 'package:cmc_store/common/widgets/texts/product_title_text.dart';
import 'package:cmc_store/utils/constants/sizes.dart';
import 'package:cmc_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../styles/shadows.dart';
import '../../icons/c_circular_icon.dart';

class CProductCardVertical extends StatelessWidget {
  const CProductCardVertical ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [CShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(CSizes.productImageRadius),
          color: dark ? CColors.darkGrey : Colors.white,
        ),
        child: Column(
          children: [
            CRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(CSizes.sm),
              backgroundColor: dark ? CColors.dark : CColors.light,
              child: Stack(
                children: [
                 const CRoundedImage(imageUrl: CImages.productImage2, applyImageRadius: true),
                  
                  Positioned(
                    top: 12,
                    child: CRoundedContainer(
                      radius: CSizes.sm,
                      backgroundColor: CColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: CSizes.sm, vertical: CSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: CColors.black)),
                    ),
                  ),
                  ///favourite icon button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CCircularIcon(icon: Iconsax.heart5, color: Colors.red),)
                  ///favourite icon button
                ],
              ),
            ),
      
            const SizedBox(height: CSizes.spaceBtwItems / 2),
            ///Details
            Padding(
              padding: const EdgeInsets.only(left: CSizes.sm),
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: [
                  const CProductTitleText(title: 'HamBurger', smallSize: true),
                  const SizedBox(height: CSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text('Nhà hàng CMC', overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(width: CSizes.xs),
                      Icon(Iconsax.verify5, color: CColors.primary, size: CSizes.iconXs),
                    ],
                  ),
      
      

                ],
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price
                const Padding(
                  padding:  EdgeInsets.only(left: CSizes.sm),
                  child:  CProductPriceText(price: '3.5'),
                ),
                Container(
                    decoration: const BoxDecoration(
                        color: CColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(CSizes.cardRadiusMd),
                          bottomRight: Radius.circular(CSizes.productImageRadius),
                        )
                    ),
                    child: SizedBox(
                      width: CSizes.iconLg * 1.2,
                      height: CSizes.iconLg * 1.2,
                      child: Center(child:  Icon(Iconsax.add, color: CColors.white)),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

