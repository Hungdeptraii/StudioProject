import 'package:cmc_food/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cmc_food/common/widgets/products/ratings/rating_indicator.dart';
import 'package:cmc_food/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(CImages.user)),
                const SizedBox(width: CSizes.spaceBtwItems),
                Text('Ngoc Hung', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems),

        ///ro viu
        Row(
          children: [
            const CRatingBarIndicator(rating: 4),
            const SizedBox(width: CSizes.spaceBtwItems),
            Text('01 Feb 2025', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems),
        const ReadMoreText(
          'Qua ngon qưeyukqwyeuiwyquieywqkyukeqywukyqwuiyeiuwqyeiuqwyiueywqiueyqwiuyeuiqwyeuiqyequiyuiy',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Thu gọn',
          trimCollapsedText: 'Xem thêm',
          moreStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: CColors.primary),
          lessStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: CColors.primary),
        ),
        const SizedBox(height: CSizes.spaceBtwItems),
        
        ///phan hoi
        CRoundedContainer(
          backgroundColor: dark ? CColors.darkerGrey : CColors.grey,
          child: Padding(
              padding: EdgeInsets.all(CSizes.md),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('CMC', style: Theme.of(context).textTheme.titleMedium),
                      Text('02 Feb 2025', style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  const SizedBox(height: CSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Qua ngon qưeyukqwyeuiwyquieywqkyukeqywukyqwuiyeiuwqyeiuqwyiueywqiueyqwiuyeuiqwyeuiqyequiyuiy',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: 'Thu gọn',
                    trimCollapsedText: 'Xem thêm',
                    moreStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: CColors.primary),
                    lessStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: CColors.primary),
                  ),
                ],
              ),
          ),
        ),
        const SizedBox(height: CSizes.spaceBtwItems),
        
      ],
    );
  }
}
