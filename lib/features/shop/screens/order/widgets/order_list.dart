import 'package:cmc_food/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cmc_food/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class COrderListItems extends StatelessWidget {
  const COrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(height: CSizes.spaceBtwItems),
      itemBuilder: (_, index) => CRoundedContainer(
          padding: const EdgeInsets.all(CSizes.md),
          showBorder: true,
          backgroundColor: dark ? CColors.dark : CColors.light,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Icon(Iconsax.ship),
                  SizedBox(width: CSizes.spaceBtwItems / 2),

                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Đang xử lí',style: Theme.of(context).textTheme.bodyLarge!.apply(color: CColors.primary, fontWeightDelta: 1),
                        ),
                        Text('14 Jul 2025', style: Theme.of(context).textTheme.headlineSmall),
                      ],
                    ),
                  ),

                  IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: CSizes.iconSm)),
                ],
              ),
                const SizedBox(height: CSizes.spaceBtwItems),

              Row(
                children: [
                  Expanded(
                      child: Row(
                        children: [
                          const Icon(Iconsax.tag),
                          const SizedBox(width: CSizes.spaceBtwItems / 2),

                          Expanded(child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Mã đơn hàng',style: Theme.of(context).textTheme.labelMedium),
                              Text('[#11111]',style: Theme.of(context).textTheme.titleMedium),

                            ],
                          ))
                        ],
                      )
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Iconsax.calendar),
                        SizedBox(width: CSizes.spaceBtwItems / 2),

                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Thời gian giao hàng',style: Theme.of(context).textTheme.bodyLarge!.apply(color: CColors.primary, fontWeightDelta: 1),
                              ),
                              Text('30 phút', style: Theme.of(context).textTheme.headlineSmall),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
