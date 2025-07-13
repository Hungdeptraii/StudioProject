import 'package:cmc_food/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cmc_food/utils/constants/colors.dart';
import 'package:cmc_food/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class CSingleAddress extends StatelessWidget {
  const CSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark  = CHelperFunctions.isDarkMode(context);
    return CRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(CSizes.md),
      backgroundColor: selectedAddress ? CColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress
      ? Colors.transparent
      : dark
        ? CColors.darkerGrey
        : CColors.grey,
      margin:  const EdgeInsets.only(bottom: CSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color:  selectedAddress
                    ? dark
                      ? CColors.light
                      : CColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ngoc hung', maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: CSizes.sm / 2),
              const Text('0123213123', maxLines: 1,overflow: TextOverflow.ellipsis),
              const SizedBox(height: CSizes.sm /2 ),
              const Text('Ha Noi, Ha Dong', softWrap: true),
            ],
          )
        ],
      ),
    );
  }
}
