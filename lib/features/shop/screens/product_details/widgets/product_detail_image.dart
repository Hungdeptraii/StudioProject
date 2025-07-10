import 'package:cmc_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/c_circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class CProductImage extends StatelessWidget {
  const CProductImage({
    super.key,

  });



  @override
  Widget build(BuildContext context) {

    return CCurvedEdgeWidget(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [

            const SizedBox(height: 400,child: Padding(
              padding: EdgeInsets.all(CSizes.productImageRadius),
              child: Center(child: Image(image: AssetImage(CImages.productImage1))),
            ),
            ),

            const CAppBar(
              showBackArrow: true,
              actions: [CCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            )
          ],
        ),
      ),
    );
  }
}