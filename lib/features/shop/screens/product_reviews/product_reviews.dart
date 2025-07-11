import 'package:cmc_store/common/widgets/appbar/appbar.dart';
import 'package:cmc_store/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:cmc_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:cmc_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:cmc_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///appbar
      appBar: CAppBar(title: Text('Nhận xét & Đánh giá'), showBackArrow: true),

      ///body
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Đánh giá bởi những người đã từng trải nghiệm món ăn ở đây!'),
                SizedBox(height: CSizes.spaceBtwItems),


                COverallProductRating(),

                CRatingBarIndicator(rating: 4.0),
                Text("9999", style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: CSizes.spaceBtwSections),

                ///danh sach ri viu
                UserReviewCard(),
                UserReviewCard(),

          ],
           ),
         ),
      ),
      );
   }
}



