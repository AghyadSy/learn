import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/core/constant/routs.dart';
import 'package:learn/data/dataresource/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pagecontroller;
  int currentpage = 0;

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }

  @override
  next() {
    if (currentpage > onboardinglist.length) {
      currentpage++;
      Get.offAllNamed(AppRoute.login);
    } else {
      pagecontroller.animateToPage(
        currentpage,
        duration: const Duration(microseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChanged(int index) {
    currentpage = index;
    update();
  }
}
