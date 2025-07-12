import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';
import '../../images/c_rounded_image.dart';
import '../../texts/c_brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class CCartItem extends StatelessWidget {
  const CCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CRoundedImage(
          imageUrl: CImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(CSizes.sm),
          backgroundColor: CColors.white,
        ),
        const SizedBox(width: CSizes.spaceBtwItems),

        ///gia
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CBrandTitleWithVerifiedIcon(title: 'Hamburger'),
              const Flexible(child: CProductTitleText(title: 'Hamburger Tom', maxLines: 1)),
            ],
          ),
        )
      ],
    );
  }
}
