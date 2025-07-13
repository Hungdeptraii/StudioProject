import 'package:carousel_slider/carousel_slider.dart';
import 'package:cmc_food/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/c_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class CPromoSlider extends StatelessWidget {
  const CPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => CRoundedImage(imageUrl: url)).toList(),
        ),


        const SizedBox(height: CSizes.spaceBtwItems),
        Center(
          child: Obx(
              () => Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                CCirculatorContainer(
                    width: 20,
                    height: 4,
                    margin:const EdgeInsets.only(right: 10) ,
                    backgroundColor: controller.carousalCurrentIndex.value == i ? CColors.primary : CColors.grey),
              ],
            ),
          ),
        )
      ],
    );
  }
}