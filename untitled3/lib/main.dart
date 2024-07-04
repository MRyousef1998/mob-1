
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/core/localization/changelocal.dart';
import 'package:untitled3/core/services/sharedpreferince.dart';
import 'package:untitled3/view/screen/language.dart';
import 'package:untitled3/routes.dart';
import 'package:untitled3/view/screen/onboarding.dart';

import 'core/constant/color.dart';
import 'core/localization/translation.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

   LocaleController controller=Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
            headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 , color: AppColor.black),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 17)),
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
      routes: routes,
    );
  }
}
