import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/call/incoming_call.screen.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class OnCallScreen extends StatefulWidget {
  const OnCallScreen({super.key});

  @override
  State<OnCallScreen> createState() => _OnCallScreenState();
}

class _OnCallScreenState extends State<OnCallScreen> {
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
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Text('Risma ayuningsih',
                        style: whiteTextStyle.copyWith(fontSize: 20.sp, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: 4.h,
                    ),
                    CircleAvatar(
                      radius: 11.h,
                      backgroundImage: const AssetImage('assets/images/avatar_sample.png'),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text('Memanggil...', style: whiteTextStyle.copyWith(fontSize: 12.sp), textAlign: TextAlign.center),
                  ],
                )),
            Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const IncomingCallScreen());
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
                )),
          ],
        ),
      ),
    );
  }
}
