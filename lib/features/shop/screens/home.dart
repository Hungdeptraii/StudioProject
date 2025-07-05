
import 'package:cmc_store/utils/constants/image_string.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/constants/sizes.dart';
import 'home/widgets/home_appbar.dart';
import 'home/widgets/home_categories.dart';
import 'home/widgets/promo_slider.dart';

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
                child: CPromoSlider(banners: [CImages.promoBanner1, CImages.promoBanner2, CImages.promoBanner3],),
            )
        
          ],
        ),
      ),
    );

  }
}














