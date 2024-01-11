import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:learn/controllers/onboardingcontroller.dart';
import 'package:learn/data/dataresource/static.dart';

class CostumDotController extends GetView<OnBoardingControllerImp> {
  const CostumDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onboardinglist.length,
                    (index) => AnimatedContainer(
                          duration: const Duration(microseconds: 900),
                          margin: const EdgeInsets.only(right: 5),
                          height: 6,
                          width: controller.currentpage == index ? 20 : 5,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 52, 178, 240),
                              borderRadius: BorderRadius.circular(50)),
                        )),
              ],
            ));
  }
}
