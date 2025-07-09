import 'package:cmc_store/common/widgets/appbar/appbar.dart';
import 'package:cmc_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:cmc_store/common/widgets/layouts/grid_layout.dart';
import 'package:cmc_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:cmc_store/common/widgets/texts/section_heading.dart';
import 'package:cmc_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:cmc_store/utils/constants/sizes.dart';
import 'package:cmc_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../utils/constants/colors.dart';




class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                        return const CBrandCard(showBorder: false);
                      },
                      ),
                    ],
                  ),
                ),

              bottom: const CTabBar(
                tabs: [
                  Tab(child: Text('Gà Rán')),
                  Tab(child: Text('HamBurger')),
                  Tab(child: Text('Thức uống')),
                  Tab(child: Text('Món tráng miệng')),
                  Tab(child: Text('Phần ăn phụ')),

                ],

            ),
            ),
          ];
        },
          body: const TabBarView(
              children: [
                  CCategoryTab(),
                  CCategoryTab(),
                  CCategoryTab(),
                  CCategoryTab(),
                  CCategoryTab(),

              ],
          ),
        ),
      ),
    );
  }
}

