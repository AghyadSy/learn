import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:learn/Services/services.dart';

class LocalController extends GetxController {
  Locale? language;
  AppServices appServices = Get.find();

  void changeLanguage(String codeLang) {
    Locale locale = Locale(codeLang);
    appServices.sharedPreferences.setString("lanq", codeLang);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    super.onInit();

    String? pref = appServices.sharedPreferences.getString("lanq");

    if (pref != null) {
      if (pref == "ar") {
        language = const Locale("ar");
      } else if (pref == "en") {
        language = const Locale("en");
      } else {
        language = Locale(Get.deviceLocale!.languageCode);
      }
    }
  }
}
// Don't forget to injection in main **