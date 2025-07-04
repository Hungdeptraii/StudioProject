

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cmc_store/features/shop/screens/widgets/home_appbar.dart';
import 'package:cmc_store/features/shop/screens/widgets/home_categories.dart';
import 'package:cmc_store/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../common/widgets/images/c_rounded_image.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/constants/sizes.dart';

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
                          CSectionHeading(title: 'Sản phẩm nổi bật', showActionButton: false),
                          const SizedBox(height: CSizes.spaceBtwItems),

                          ///Categories
                          CHomeCategories(),
                        ],
                      ),
                    ),
                  ],
                ) ,
            ),

            ///Body
            Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                ),
                items: [
                  CRoundedImage(imageUrl: CImages.promoBanner1),
                  CRoundedImage(imageUrl: CImages.promoBanner2),
                  CRoundedImage(imageUrl: CImages.promoBanner3),
                ]
              ),
            )
          ],
        ),
      ),
    );

  }
}












