import 'package:cmc_food/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(), // Thoát focus khi tap ra ngoài
      child: Scaffold(
          appBar: const CAppBar(showBackArrow: true, title: Text('Thêm địa chỉ mới')),
          body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Form(
                  child: Column(
                    children: [
                      TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Họ và tên')),
                      const SizedBox(height: CSizes.spaceBtwInputFields),
                      TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Số điện thoại')),
                      const SizedBox(height: CSizes.spaceBtwInputFields),
                      Row(
                        children: [
                          Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Tên Đường, Tòa nhà, Số nhà'))),
                          const SizedBox(width: CSizes.spaceBtwInputFields),
                          Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Postal Code'))),
                        ],
                      ),
                      const SizedBox(height: CSizes.spaceBtwInputFields),
                      Row(
                        children: [
                          Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'Tỉnh/Thành Phố'))),
                          const SizedBox(width: CSizes.spaceBtwInputFields),
                          Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'Tình trạng'))),
                        ],
                      ),
                      const SizedBox(height: CSizes.defaultSpace),
                      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Lưu'))),
      
                    ],
                  )
              ),
            ),
          ),
      ),
    );
  }
}
