import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class  OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  /// Cập nhật chỉ mục hiện tại khi trang cuộn
  void  updatePageIndicator(index) => currentPageIndex.value = index;
  /// Chuyển đến trang được chọn bởi dấu chấm cụ thể.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }
  /// Cập nhật chỉ mục hiện tại và chuyển đến trang tiếp theo
  void  nextPage() {
    if(currentPageIndex.value == 2){
      //Get.to(LoginScreen());
    }else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }

  }
  /// Cập nhật chỉ mục hiện tại và chuyển đến trang cuối cùng
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}