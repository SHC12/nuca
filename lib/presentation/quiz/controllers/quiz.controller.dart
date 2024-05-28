import 'dart:async';

import 'package:get/get.dart';
import 'package:nuca/presentation/call/on_call.screen.dart';
import 'package:nuca/presentation/quiz/quiz_answer.screen.dart';

class QuizController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    quizAnswerStart();
  }

  quizAnswerStart() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Get.offAll(() => QuizAnswerScreen());
    });
  }

  quizMatching() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Get.offAll(() => OnCallScreen());
    });
  }
}
