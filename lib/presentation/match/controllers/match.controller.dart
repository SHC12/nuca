import 'dart:async';

import 'package:get/get.dart';
import 'package:nuca/presentation/chat/chat.screen.dart';
import 'package:nuca/presentation/match/match_answer.screen.dart';
import 'package:nuca/presentation/match/match_matching.screen.dart';

class MatchController extends GetxController {
  //TODO: Implement MatchController
  @override
  void onInit() {
    super.onInit();
    matchAnswerStart();
  }

  matchAnswerStart() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Get.offAll(() => MatchAnswerScreen());
    });
  }

  matchMatching() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Get.offAll(() => ChatScreen());
    });
  }
}
