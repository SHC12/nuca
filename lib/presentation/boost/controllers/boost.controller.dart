import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/presentation/boost/widgets/popup_boost.widget.dart';
import 'package:nuca/presentation/screens.dart';

class BoostController extends GetxController {
  popUpBoost(var subtitle, Function() onPressed) {
    showDialog(
        context: Get.context!,
        barrierDismissible: false,
        builder: (BuildContext context) => PopUpBoostWidget(
              subTitle: subtitle,
              onPressed: () {
                Get.back();
                Get.to(() => BoostScreen());
              },
            ));
  }
}
