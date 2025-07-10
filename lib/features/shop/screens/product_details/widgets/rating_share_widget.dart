import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class CRatingAndShare extends StatelessWidget {
  const CRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ///danh gia
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24),
            const SizedBox(width: CSizes.spaceBtwItems / 2),
            Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
                      const TextSpan(text: '(99)'),
                    ]
                )
            )
          ],
        ),

        ///share button
        IconButton(onPressed: (){}, icon: const Icon(Icons.share, size:  CSizes.iconMd))
      ],
    );
  }
}