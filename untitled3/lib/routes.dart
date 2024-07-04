
import 'package:flutter/cupertino.dart';
import 'package:untitled3/view/screen/auth/login.dart';
import 'package:untitled3/view/screen/onboarding.dart';

import 'core/constant/routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onBoarding: (context) => const OnBoarding()

};
