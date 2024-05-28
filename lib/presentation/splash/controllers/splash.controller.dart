import 'dart:async';

import 'package:get/get.dart';
import 'package:nuca/presentation/home/navbar_bottom.screen.dart';
import 'package:nuca/presentation/login/pra_login.screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splashscreenStart();
    // pref!.clear();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      // Get.offAll(() => const PraLoginScreen());
      Get.offAll(() => NavbarBottomScreen());
    });
  }
}
