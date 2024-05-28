import 'package:get/get.dart';

import '../../../../presentation/match/controllers/match.controller.dart';

class MatchControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MatchController>(
      () => MatchController(),
    );
  }
}
