import 'package:get/get.dart';

class ProgressController extends GetxController {
  var indexStepPage = 1.obs;

  nextPage() {
    indexStepPage.value++;
  }

  previousPage() {
    indexStepPage.value--;
  }
}
