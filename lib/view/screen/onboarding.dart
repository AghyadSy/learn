import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/controllers/onboardingcontroller.dart';
import 'package:learn/view/widget/onboaeding/costumbottum.dart';
import 'package:learn/view/widget/onboaeding/costumdotcontroller.dart';
import 'package:learn/view/widget/onboaeding/costumpagebuilder.dart';

class OnBoarding extends GetView<OnBoardingControllerImp> {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: CostumPageBuilder(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  CostumDotController(), //Controller
                  Spacer(flex: 1),
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [CostumBottom()], //bottom
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
