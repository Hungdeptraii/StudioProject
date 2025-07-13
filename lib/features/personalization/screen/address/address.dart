 import 'package:cmc_food/common/widgets/appbar/appbar.dart';
import 'package:cmc_food/features/personalization/screen/address/add_new_address.dart';
import 'package:cmc_food/features/personalization/screen/address/widgets/single_address.dart';
import 'package:cmc_food/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: CColors.primary,
            onPressed: () => Get.to(() => const AddNewAddressScreen()),
            child:  const Icon(Iconsax.add, color: CColors.white),
        ),
      appBar: CAppBar(
        showBackArrow: true,
        title: Text('Địa chỉ', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              children: [
                  CSingleAddress(selectedAddress: true),
                  CSingleAddress(selectedAddress: false),
              ],
            ),
        ),
      ),
    );
  }
}
