import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/c_circlar_image.dart';
import '../texts/c_brand_title_text_with_verified_icon.dart';

class CBrandCard extends StatelessWidget {
  const CBrandCard({
    super.key,
    this.onTap,
    required this.showBorder
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = CHelperFunctions.isDarkMode(context);
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
                overlayColor: CColors.white,
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
  }
}
