import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/presentation/chat/chat.screen.dart';
import 'package:nuca/presentation/match/match_answer.screen.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
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
                        height: 60.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(image: AssetImage('assets/images/swipe_image.png'), fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        height: 6.h,
                        width: 70.w,
                        child: ButtonWidget(
                          title: 'Chat Sekarang',
                          colorTittleCustom: blackColor,
                          color: whiteColor,
                          isColorTittleCustom: true,
                          onTap: () {
                            Get.to(() => ChatScreen());
                          },
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        height: 6.h,
                        width: 70.w,
                        child: ButtonWidget(
                          isBorderColorOnly: true,
                          colorBorder: whiteColor,
                          title: 'Lanjut Swipe',
                          colorTittleCustom: whiteColor,
                          color: Colors.transparent,
                          isColorTittleCustom: true,
                          onTap: () {
                            Get.back();
                          },
                        ),
                      ),
                    ],
                  )),
            ));
  }

  matchSuper() {
    showDialog(
        context: Get.context!,
        builder: (context) => Dialog.fullscreen(
              backgroundColor: Colors.transparent,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Image.asset('assets/images/match_super_text.png')),
                      SizedBox(
                        height: 4.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Transform.rotate(
                                angle: -math.pi / 15,
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.circular(18),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/avatar_sample.png'), fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Transform.rotate(
                                  angle: -math.pi / -20,
                                  child: Container(
                                    height: 40.h,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(18),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/swipe_image.png'), fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Center(
                        child: Container(
                          height: 6.h,
                          width: 70.w,
                          child: ButtonWidget(
                            title: 'Chat Sekarang',
                            colorTittleCustom: blackColor,
                            color: whiteColor,
                            isColorTittleCustom: true,
                            onTap: () {
                              Get.to(() => ChatScreen());
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Center(
                        child: Container(
                          height: 6.h,
                          width: 70.w,
                          child: ButtonWidget(
                            isBorderColorOnly: true,
                            colorBorder: whiteColor,
                            title: 'Lanjut Swipe',
                            colorTittleCustom: whiteColor,
                            color: Colors.transparent,
                            isColorTittleCustom: true,
                            onTap: () {
                              Get.back();
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
            ));
  }
}
