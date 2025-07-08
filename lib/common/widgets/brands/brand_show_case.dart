import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class CBrandShowcase extends StatelessWidget {
  const CBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      showBorder: true,
      borderColor: CColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(CSizes.md),
      margin: const EdgeInsets.only(bottom: CSizes.spaceBtwItems),
      child: Column(
        children: [
          const CBrandCard(showBorder: false),
          const SizedBox(height: CSizes.spaceBtwItems),

          Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()),

        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
        child: CRoundedContainer(
          height: 100,
          padding: const EdgeInsets.all(CSizes.md),
          margin: const EdgeInsets.only(right: CSizes.sm),
          child:  Image(fit: BoxFit.contain, image: AssetImage(image)),
        )
    );
  }
}