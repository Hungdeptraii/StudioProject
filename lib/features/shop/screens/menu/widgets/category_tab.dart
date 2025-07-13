import 'package:cmc_store/common/widgets/brands/brand_show_case.dart';
import 'package:cmc_store/common/widgets/layouts/grid_layout.dart';
import 'package:cmc_store/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:cmc_store/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class CCategoryTab extends StatelessWidget {
  const CCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              children: [
                CBrandShowcase(images: [CImages.productImage1,CImages.productImage2, CImages.productImage3]),
                const SizedBox(height: CSizes.spaceBtwItems),

                CSectionHeading(title: 'Có thể bạn thích', showActionButton: false, onPressed: () {}),
                const SizedBox(height: CSizes.spaceBtwItems),

                CGridLayout(itemCount: 6, itemBuilder: (_, index) => CProductCardVertical()),
                const SizedBox(height: CSizes.spaceBtwSections),
              ],
            ),
        ),
      ],
    );
  }
}
