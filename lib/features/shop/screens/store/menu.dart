import 'package:cmc_store/common/widgets/appbar/appbar.dart';
import 'package:cmc_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cmc_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:cmc_store/common/widgets/layouts/grid_layout.dart';
import 'package:cmc_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:cmc_store/common/widgets/texts/c_brand_title_text_with_verified_icon.dart';
import 'package:cmc_store/common/widgets/texts/section_heading.dart';
import 'package:cmc_store/utils/constants/image_string.dart';
import 'package:cmc_store/utils/constants/sizes.dart';
import 'package:cmc_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/c_circlar_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';



class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        title: Text('Menu', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CCartCounterIcon(onPressed: (){}, iconColor: CHelperFunctions.isDarkMode(context) ? CColors.white : CColors.black,),
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
        return [
          SliverAppBar(
              pinned: true,
              floating: true,
              automaticallyImplyLeading: false,
              backgroundColor: CHelperFunctions.isDarkMode(context) ? CColors.black : CColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                  padding: EdgeInsets.all(CSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ///tim kiem
                    const SizedBox(height: CSizes.spaceBtwItems),
                    const CSearchContainer(text: 'Tìm kiếm', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                    const SizedBox(height: CSizes.spaceBtwSections),

                    ///danh muc
                    CSectionHeading(title: 'Danh mục', onPressed: (){}),
                    const SizedBox(height: CSizes.spaceBtwItems / 1.5),

                    CGridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: (){},
                        child: CRoundedContainer(
                          padding: const EdgeInsets.all(CSizes.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            children: [
                              ///--Icon
                              Flexible(
                                child: CCircularImage(
                                  isNetworkImage: false,
                                  image: CImages.spaghettiIcon,
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              const SizedBox(width: CSizes.spaceBtwItems / 2),

                              ///Text
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CBrandTitleWithVerifiedIcon(title: 'Hamburger', brandTextSize: TextSizes.large),
                                    Text(
                                      '4 loại',
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.labelMedium,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    ),
                  ],
                ),
              ),
          ),
        ];
      },
        body: Container(), // TODO: Add your scrollable content here later if needed
      ),
    );
  }
}

