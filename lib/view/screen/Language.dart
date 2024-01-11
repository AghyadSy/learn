import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:learn/core/localzation/changelocal.dart';

class Language extends GetView<LocalController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text("Choose Language App"),
          Container(
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              color: Colors.blueGrey,
              elevation: 20,
              child: Text("1".tr),
              onPressed: () {
                controller.changeLanguage("en");
              },
            ),
          ),
          Container(
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              color: Colors.blueGrey,
              elevation: 20,
              child: const Text("2"),
              onPressed: () {
                controller.changeLanguage("en");
              },
            ),
          )
        ],
      ),
    );
  }
}
