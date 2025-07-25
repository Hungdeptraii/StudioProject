
import 'package:cmc_food/common/widgets/texts/section_heading.dart';
import 'package:cmc_food/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:cmc_food/features/shop/screens/product_details/widgets/product_detail_image.dart';
import 'package:cmc_food/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:cmc_food/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:cmc_food/utils/constants/sizes.dart';
import 'package:cmc_food/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../product_reviews/product_reviews.dart';



class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return   Scaffold(
      bottomNavigationBar: CBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CProductImage(),

            ///thong tin san pham
            Padding(
                padding: EdgeInsets.only(right: CSizes.defaultSpace,left: CSizes.defaultSpace, bottom: CSizes.defaultSpace),
                child: Column(
                  children: [
                    ///danh gia va chia se
                    CRatingAndShare(),

                    ///gia, thong tin,
                    CProductMetaData(),
                    const SizedBox(height: CSizes.spaceBtwSections),


                    ///checkout button
                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Thanh toán'))),
                    const SizedBox(height: CSizes.spaceBtwSections),


                    ///Mô tả
                    const CSectionHeading(title: 'Mô tả', showActionButton: false),
                    const SizedBox(height: CSizes.spaceBtwItems),
                    const ReadMoreText(
                      'Trải nghiệm hương vị hamburger chuẩn mực với miếng bò Úc mọng nước, phô mai tan chảy béo ngậy, rau tươi giòn tan và sốt đặc biệt nhà làm, kẹp trong vỏ bánh brioche nướng vàng ươm.',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Xem thêm',
                      trimExpandedText: 'Thu gọn',
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),

                    ///Reviews
                    const Divider(),
                    const SizedBox(height: CSizes.spaceBtwSections),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CSectionHeading(title: 'Nhận xét(99)',showActionButton: false)  ,
                        IconButton(icon: const Icon(Iconsax.arrow_right_3,size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen())),
                      ],
                    ),
                    const SizedBox(height: CSizes.spaceBtwSections),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}


