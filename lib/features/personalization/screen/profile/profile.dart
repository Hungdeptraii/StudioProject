import 'package:cmc_store/common/widgets/appbar/appbar.dart';
import 'package:cmc_store/common/widgets/images/c_circlar_image.dart';
import 'package:cmc_store/common/widgets/texts/section_heading.dart';
import 'package:cmc_store/features/personalization/screen/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CAppBar(
        showBackArrow: true,
        title: Text('Hồ sơ'),
      ),

      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CCircularImage(image: CImages.user, width: 80, height: 80),
                  TextButton(onPressed: (){}, child: const Text('Thay ảnh đại diện')),
                ],
              ),
            ),

            const SizedBox(height: CSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: CSizes.spaceBtwItems),
            const CSectionHeading(title: 'Profile', showActionButton: false),
            const SizedBox(height: CSizes.spaceBtwItems),

            CProfileMenu(title: 'Họ và tên', value: 'Trần Ngọc Hùng', onPressed: (){}),
            CProfileMenu(title: 'Username', value: 'ngochung2005', onPressed: (){}),
            
            const SizedBox(height: CSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: CSizes.spaceBtwItems),
            
            const CSectionHeading(title: 'Thông tin cá nhân', showActionButton: false),
            const SizedBox(height: CSizes.spaceBtwItems),

            CProfileMenu(title: 'User ID', value: '12345',icon: Iconsax.copy, onPressed: (){}),
            CProfileMenu(title: 'Email', value: 'ngchung@gmail.com', onPressed: (){}),
            CProfileMenu(title: 'SDT', value: '099999999', onPressed: (){}),
            CProfileMenu(title: 'Giới tính', value: 'Nam', onPressed: (){}),
            CProfileMenu(title: 'Ngày sinh', value: '27 Apr,2005', onPressed: (){}),
            const Divider(),
            const SizedBox(height: CSizes.spaceBtwItems),

            Center(
              child: TextButton(
                  onPressed: (){},
                  child: const Text('Xóa tài khoản', style:  TextStyle(color: Colors.red)),
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}

