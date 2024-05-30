import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/presentation/chat/chat.screen.dart';
import 'package:nuca/presentation/match/match_answer.screen.dart';
import 'package:sizer/sizer.dart';

class MatchController extends GetxController {
  var overlayController = OverlayPortalController();
  @override
  void onInit() {
    super.onInit();
    // matchAnswerStart();
  }

  matchAnswerStart() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Get.offAll(() => const MatchAnswerScreen());
    });
  }

  matchMatching() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Get.offAll(() => const ChatScreen());
    });
  }

  matchSwipe() {
    showDialog(
        context: Get.context!,
        builder: (context) => Dialog.fullscreen(
              backgroundColor: Colors.transparent,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [],
                        ),
                      )
                    ],
                  )),
            ));
  }
}
