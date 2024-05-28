import 'package:get/get.dart';

import '../../../../presentation/call/controllers/call.controller.dart';

class CallControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CallController>(
      () => CallController(),
    );
  }
}
