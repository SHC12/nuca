import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/chat/chat.screen.dart';
import 'package:nuca/presentation/home/navbar_bottom.screen.dart';
import 'package:nuca/presentation/match/controllers/match.controller.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class SwipeScreen extends StatefulWidget {
  const SwipeScreen({super.key});

  @override
  State<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  MatchController matchController = Get.put(MatchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 6.h),
        width: double.infinity,
        height: 200.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/swipe_image.png',
          ),
          fit: BoxFit.cover,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.offAll(() => const NavbarBottomScreen());
                  },
                  child: Icon(
                    Remix.arrow_left_s_line,
                    size: 5.h,
                    color: whiteColor,
                  ),
                ),
                Image.asset('assets/images/logo_text_white.png', scale: 02),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ChatScreen());
                  },
                  child: Icon(
                    Remix.chat_1_line,
                    size: 5.h,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dewi, 25',
                  style: whiteTextStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                      decoration: BoxDecoration(
                        color: chipBackgroundGenderColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(children: [
                        Icon(
                          Remix.women_line,
                          color: whiteColor,
                          size: 10.sp,
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          '27',
                          style: whiteTextStyle.copyWith(fontSize: 10.sp),
                        )
                      ]),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                      decoration: BoxDecoration(
                        color: chipBackgroundLVTopColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(children: [
                        Text(
                          'LV.10',
                          style: whiteTextStyle.copyWith(fontSize: 10.sp),
                        )
                      ]),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                      decoration: BoxDecoration(
                        color: chipBackgroundLVTopColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(children: [
                        Text(
                          'TOP 12',
                          style: whiteTextStyle.copyWith(fontSize: 10.sp),
                        )
                      ]),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                      decoration: BoxDecoration(
                        color: chipBackgroundVIPColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(children: [
                        Text(
                          'VIP',
                          style: whiteTextStyle.copyWith(fontSize: 10.sp),
                        )
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xFFECEFFD),
                      radius: 20.sp,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Remix.arrow_go_back_line),
                        color: const Color(0xFF6691FF),
                        iconSize: 25.sp,
                        onPressed: () {},
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: const Color(0xFFECEFFD),
                      radius: 20.sp,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Remix.close_line),
                        color: const Color(0xFFFF0000),
                        iconSize: 25.sp,
                        onPressed: () {},
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        matchController.matchSwipe();
                      },
                      child: CircleAvatar(
                          backgroundColor: whiteColor,
                          radius: 30.sp,
                          child: Image.asset(
                            'assets/images/heart_icon.png',
                            width: 30.sp,
                          )),
                    ),
                    CircleAvatar(
                      backgroundColor: const Color(0xFFECEFFD),
                      radius: 20.sp,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Remix.heart_3_fill),
                        color: const Color(0xFFFF3495),
                        iconSize: 25.sp,
                        onPressed: () {
                          matchController.matchSuper();
                        },
                      ),
                    ),
                    CircleAvatar(
                        backgroundColor: const Color(0xFFECEFFD),
                        radius: 20.sp,
                        child: Image.asset(
                          'assets/images/warning.png',
                          width: 10.sp,
                          height: 4.h,
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
