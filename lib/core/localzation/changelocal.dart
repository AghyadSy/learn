import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:learn/Services/services.dart';

class LocalController extends GetxController {
  Locale? language;
  AppServices appServices = Get.find();

  void changeLanguage(String codeLang) {
    Locale locale = Locale(codeLang);
    appServices.getStorage.write("lanq", codeLang);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    super.onInit();

    String? store = appServices.getStorage.read("lanq"); // corrected

    if (store != null) {
      if (store == "ar") {
        language = const Locale("ar");
      } else if (store == "en") {
        language = const Locale("en");
      } else {
        language = Locale(Get.deviceLocale!.languageCode);
      }
    }
  }
}
