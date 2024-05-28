import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/home/navbar_bottom.screen.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

import 'controllers/call.controller.dart';

class CallScreen extends GetView<CallController> {
  const CallScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [SizedBox(), Image.asset('assets/images/logo_text_white.png', scale: 02), SizedBox()],
              ),
            ),
            Flexible(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Risma, Pradana',
                        style: whiteTextStyle.copyWith(fontSize: 20.sp, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: 4.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/images/avatar_sample.png',
                                ),
                                radius: 11.h,
                              ),
                            ),
                          ),
                          Positioned(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/images/avatar_sample_2.png',
                                ),
                                radius: 11.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text('1 : 30', style: whiteTextStyle.copyWith(fontSize: 14.sp), textAlign: TextAlign.center),
                  ],
                )),
            Flexible(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 4.2.h,
                        backgroundColor: greyColor,
                        child: CircleAvatar(
                          radius: 4.h,
                          backgroundColor: blackColor,
                          child: Icon(
                            Remix.volume_up_line,
                            size: 4.h,
                            color: greyColor,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 4.2.h,
                        backgroundColor: greyColor,
                        child: CircleAvatar(
                          radius: 4.h,
                          backgroundColor: blackColor,
                          child: Icon(
                            Remix.mic_off_line,
                            size: 4.h,
                            color: greyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.2.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offAll(() => NavbarBottomScreen());
                    },
                    child: CircleAvatar(
                      radius: 4.h,
                      backgroundColor: redColor,
                      child: Icon(
                        Remix.close_fill,
                        size: 6.h,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
