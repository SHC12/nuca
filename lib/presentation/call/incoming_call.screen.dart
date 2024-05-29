import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/screens.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class IncomingCallScreen extends StatefulWidget {
  const IncomingCallScreen({super.key});

  @override
  State<IncomingCallScreen> createState() => _IncomingCallScreenState();
}

class _IncomingCallScreenState extends State<IncomingCallScreen> {
  @override
  void initState() {
    super.initState();
  }

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
                children: [
                  const SizedBox(),
                  Image.asset('assets/images/logo_text_white.png', scale: 02),
                  const SizedBox()
                ],
              ),
            ),
            Flexible(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('MATCH CALLING',
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
                                backgroundImage: const AssetImage(
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
                                backgroundImage: const AssetImage(
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
                    Text('Panggilan Masuk...',
                        style: whiteTextStyle.copyWith(fontSize: 12.sp), textAlign: TextAlign.center),
                  ],
                )),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const CallScreen());
                    },
                    child: CircleAvatar(
                      radius: 4.h,
                      backgroundColor: greenColor,
                      child: Icon(
                        Remix.check_fill,
                        size: 6.h,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.to(() => IncomingCallScreen());
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
