import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart' show GetView;
import 'package:learn/controllers/onboardingcontroller.dart';
import 'package:learn/data/dataresource/static.dart';

class CostumPageBuilder extends GetView<OnBoardingControllerImp> {
  const CostumPageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pagecontroller,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onboardinglist.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(
                  onboardinglist[i].title!,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Image.asset(
                  onboardinglist[i].image!,
                  fit: BoxFit.contain,
                  height: 300,
                  width: 300,
                ),
                const SizedBox(
                  height: 12,
                ),
                const SizedBox(height: 60),
                Text(
                  onboardinglist[i].body!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ));
  }
}
