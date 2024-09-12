import 'package:get/get.dart';
import 'package:holiday/core/constants/route.dart';
import 'package:holiday/core/middleware/mymiddleware.dart';
import 'package:holiday/notifications.dart';
import 'package:holiday/test.dart';
import 'package:holiday/view/auth/signup.dart';
import 'package:holiday/view/auth/successsignup.dart';
import 'package:holiday/view/detilspagee.dart';
import 'package:holiday/view/forgetpassword/verifycodeforgetpassword.dart';
import 'package:holiday/view/homepahe.dart';

import 'package:holiday/view/onboarding/onboarding.dart';
import 'package:holiday/view/testwidgets.dart';

List<GetPage<dynamic>>? getPages = [
  // GetPage(
  //     name: AppRoutes.login,
  //     page: () => Login(),
  //     middlewares: [MyMiddleware()]),
  GetPage(
      name: AppRoutes.signup,
      page: () => Signup(),
      middlewares: [MyMiddleware()]),

  GetPage(
      name: AppRoutes.onboarding,
      page: () => const Onboarding(),
      middlewares: [Onboardingmiddleware()]),
  GetPage(
    name: AppRoutes.success,
    page: () => SuccessSignup(),
  ),

  GetPage(name: AppRoutes.verifycode, page: () => VerifycodeForgetpassword()),
  GetPage(name: AppRoutes.testwidget, page: () => AvocadoPage()),

  GetPage(name: AppRoutes.homepage, page: () => Homepage()),
  GetPage(name: AppRoutes.details, page: () => Details()),
  GetPage(name: AppRoutes.notifications, page: () => Notifications()),
  // GetPage(name: AppRoutes.addhotel, page: () => Addhotel()),
];
