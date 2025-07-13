import 'package:cmc_food/common/widgets/appbar/appbar.dart';
import 'package:cmc_food/features/shop/screens/order/widgets/order_list.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: Text('Đơn hàng của tôi', style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true),
      body: const Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),

        ///don hang
        child: COrderListItems(),
      ),
    );
  }
}
