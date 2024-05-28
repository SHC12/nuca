import 'package:get/get.dart';

import '../../../../presentation/boost/controllers/boost.controller.dart';

class BoostControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BoostController>(
      () => BoostController(),
    );
  }
}
