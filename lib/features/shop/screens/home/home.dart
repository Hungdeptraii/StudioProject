
import 'package:cmc_food/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:cmc_food/features/shop/screens/all_products/all_products.dart';
import 'package:cmc_food/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///
            CPrimaryHeaderContainer(
                child: Column(
                  children: [
                    ///Appbar -- Tutorial
                    const CHomeAppBar(),
                    const SizedBox(height: CSizes.spaceBtwSections),

                    ///-Searchbar
                    const CSearchContainer(text: 'Tìm kiếm'),
                    const SizedBox(height: CSizes.spaceBtwSections),

                    ///Categories ---
                    Padding(padding: EdgeInsets.only(left: CSizes.defaultSpace),
                      child: Column(
                        children: [

                          ///Heading
                          CSectionHeading(title: 'Danh mục', showActionButton: false),
                          SizedBox(height: CSizes.spaceBtwItems),

                          ///Categories
                          CHomeCategories(),
                        ],
                      ),
                    ),
                    const SizedBox(height: CSizes.spaceBtwSections),
                  ],
                ) ,
            ),

            ///Body
            Padding(
                padding: const EdgeInsets.all(CSizes.defaultSpace),
                child: Column(
                  children: [
                    CPromoSlider(banners: [CImages.promoBanner1, CImages.promoBanner2, CImages.promoBanner3]),
                    SizedBox(height: CSizes.spaceBtwSections),

                    CSectionHeading(title: 'Sản phẩm nổi bật', onPressed: () => Get.to(() => const AllProducts())),
                    const SizedBox(height: CSizes.spaceBtwItems),

                    CGridLayout(itemCount: 4, itemBuilder: (_, index) => const CProductCardVertical()),
                  ],
                )
            ),
          ],
        ),
      ),
    );

  }
}
















