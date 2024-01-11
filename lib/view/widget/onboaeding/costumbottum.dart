import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:learn/controllers/onboardingcontroller.dart';

class CostumBottom extends GetView<OnBoardingControllerImp> {
  const CostumBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 250,
      padding: const EdgeInsets.all(20),
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        elevation: 10,
        color: Colors.blueAccent,
        textColor: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Text("Continue"),
      ),
    );
  }
}
