import 'package:cmc_store/common/widgets/appbar/appbar.dart';
import 'package:cmc_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cmc_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:cmc_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:cmc_store/common/widgets/texts/section_heading.dart';
import 'package:cmc_store/utils/constants/sizes.dart';
import 'package:cmc_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';



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
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ///-timkiem
                    SizedBox(height: CSizes.spaceBtwItems),
                    CSearchContainer(text:'Tìm kiếm', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                    SizedBox(height: CSizes.spaceBtwSections),

                    ///danh muc
                    CSectionHeading(title: 'Danh mục', onPressed: (){}),
                    const SizedBox(height: CSizes.spaceBtwItems / 1.5),
                    
                    CRoundedContainer(
                      padding: const EdgeInsets.all(CSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [

                        ],
                      ),
                    )

                  ],
                ),
              ),
          ),
        ];
      },

          body: Container()),
    );
  }
}
