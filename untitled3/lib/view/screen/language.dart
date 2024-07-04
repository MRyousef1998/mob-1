import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/core/constant/color.dart';
import 'package:untitled3/core/constant/routes.dart';
import 'package:untitled3/core/localization/changelocal.dart';
import 'package:untitled3/view/widget/language/custombuttonlang.dart';
class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),

      body: Container(
        padding:const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr,style:Theme.of(context).textTheme.headline1 ,),
            const SizedBox(
              height: 5,
            ),
            CustomButtonLLang(textbutton: "En",onPressed: (){
              controller.changeLang('en');
              Get.toNamed(AppRoute.onBoarding);

            },),

            CustomButtonLLang(textbutton: "Ar",onPressed: (){
              controller.changeLang("ar");
              Get.toNamed(AppRoute.onBoarding);

            },)
          ],
        ),

      ),
    );
  }
}
