import 'package:cmc_store/common/widgets/appbar/appbar.dart';
import 'package:cmc_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:cmc_store/common/widgets/list_title/settings_menu_titile.dart';
import 'package:cmc_store/common/widgets/texts/section_heading.dart';
import 'package:cmc_store/features/personalization/screen/address/address.dart';
import 'package:cmc_store/features/shop/screens/order/order.dart';
import 'package:cmc_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_title/user_profile_title.dart';
import '../../../../utils/constants/sizes.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--header
            CPrimaryHeaderContainer(
                child: Column(
                  children: [
                    CAppBar(title: Text('Tài Khoản' , style: Theme.of(context).textTheme.headlineMedium!.apply(color: CColors.white))),

                    CUserProfileTitle(onPressed: () => Get.to(() => const ProfileScreen())),
                    const SizedBox(height: CSizes.spaceBtwSections),
              ],
            ),
            ),

            ///body
             Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Column(
                children: [

                  const CSectionHeading(title: 'Thiết lập tài khoản', showActionButton: false),
                  const SizedBox(height: CSizes.spaceBtwItems),

                  CSettingsMenuTitle(icon: Iconsax.safe_home, title: 'Địa chỉ' , subTitle: 'Thiết lập địa chỉ giao hàng', onTap: () => Get.to(() => UserAddressScreen())),
                  CSettingsMenuTitle(icon: Iconsax.shopping_cart, title: 'Giỏ hàng' , subTitle: 'Thêm,xóa sản phẩm và tiến hành thanh toán'),
                  CSettingsMenuTitle(icon: Iconsax.bag_tick, title: 'Đơn hàng' , subTitle: 'Đơn hàng đang được xử lý và hoàn thành',onTap: () => Get.to(() => OrderScreen())),
                  CSettingsMenuTitle(icon: Iconsax.bank, title: 'Tài khoản ngân hàng' , subTitle: 'Rút số dư về tài khoản ngân hàng đã đăng ký'),
                  CSettingsMenuTitle(icon: Iconsax.discount_shape, title: 'Mã giảm giá của tôi' , subTitle: 'Danh sách tất cả các mã giảm giá'),
                  CSettingsMenuTitle(icon: Iconsax.notification, title: 'Thông báo' , subTitle: 'Thiết lập bất kỳ loại tin nhắn thông báo nào'),
                  CSettingsMenuTitle(icon: Iconsax.security_card, title: 'Quyền riêng tư tài khoản' , subTitle: 'Quản lý việc sử dụng dữ liệu và các tài khoản đã kết nối'),

                  ///caidat
                  SizedBox(height: CSizes.spaceBtwSections),
                  CSectionHeading(title: 'Cài đặt', showActionButton: false),
                  SizedBox(height: CSizes.spaceBtwItems),
                  CSettingsMenuTitle(icon: Iconsax.document_upload, title: 'Tải dữ liệu', subTitle: 'Tải dữ liệu của bạn'),
                  CSettingsMenuTitle(
                      icon: Iconsax.location,
                      title: 'Vị trí địa lý',
                      subTitle: 'Đặt đề xuất dựa trên vị trí',
                      trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  CSettingsMenuTitle(
                    icon: Iconsax.security_user,
                    title: 'Chế độ an toàn',
                    subTitle: 'Kết quả tìm kiếm an toàn cho mọi lứa tuổi',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  ///logout
                  const SizedBox(height: CSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Đăng xuất')),
                  ),
                  const SizedBox(height: CSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
