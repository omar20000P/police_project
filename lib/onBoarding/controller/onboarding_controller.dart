
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../data/datasource/static/static.dart';


abstract class OnBoardingController extends GetxController {
  next();

  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
    //  Navigator.of(context).pushNamedAndRemoveUntil("login", (route) => false);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
  }
  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }
  /*
  MyServices myServices = Get.find() ;
  @override
  next() {
    currentPage++;
  @override
  onPageChanged(int index) {
  }
*/
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
