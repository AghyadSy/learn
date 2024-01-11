import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:learn/Services/services.dart';
import 'package:learn/core/localzation/changelocal.dart';
import 'package:learn/core/localzation/translation.dart';
import 'package:learn/routs.dart';
import 'package:learn/view/screen/Language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await initialServices();

  (const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTrans(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      home: const Language(),
      routes: routes,
      theme: ThemeData(
        fontFamily: "PlayFariDisplay",
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 46, 40, 40),
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 104, 28, 159),
          ),
        ),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
