import 'package:cmc_food/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class CBillingAddressSection extends StatelessWidget {
  const CBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CSectionHeading(title: 'Địa chỉ giao hàng', buttonTitle: 'Thay đổi', onPressed: (){}),
        Text('Trần Ngọc Hùng', style: Theme.of(context).textTheme.bodyLarge),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: CSizes.spaceBtwItems),
            Text('0000999911', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: CSizes.spaceBtwItems),
            Expanded(child: Text('Ha Dong,Ha Noi', style: Theme.of(context).textTheme.bodyMedium, softWrap: true)),
          ],
        )
      ],
    );
  }
}
