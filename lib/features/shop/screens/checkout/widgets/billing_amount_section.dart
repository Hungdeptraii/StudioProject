import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class CBillingAmountSection extends StatelessWidget {
  const CBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///tong tien
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tổng tiền', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$999', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems /2),

        ///phi ship
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Ship', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$0.2', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems /2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Thuế', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$0.2', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems /2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tổng tiền phải thanh tooán', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$100', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
