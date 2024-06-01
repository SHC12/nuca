import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

import 'controllers/boost.controller.dart';

class BoostScreen extends GetView<BoostController> {
  const BoostScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: 100.h,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/boost_background.png'), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 4.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Text(
                  'BOOST STOCK',
                  style: whiteTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(Remix.close_line, color: whiteColor))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.w,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60.w,
                    margin: EdgeInsets.only(right: 4.w),
                    padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                          const Color(0xFFFFFFFF).withOpacity(0.31),
                          const Color(0xFFFFFFFF).withOpacity(0.69),
                          const Color(0xFF999999).withOpacity(0.58),
                        ])),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SILVER',
                          style: whiteTextStyle.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          style: whiteTextStyle.copyWith(fontSize: 8.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'INCLUDE\nLorem ipsum dolor sit amet, consectetur adipiscing elit, ',
                          style: whiteTextStyle.copyWith(fontWeight: FontWeight.w200, fontSize: 8.sp),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 4.w),
                    width: 60.w,
                    padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                          const Color(0xFFFFFFFF).withOpacity(0.31),
                          const Color(0xFFFFFFFF).withOpacity(0.69),
                          const Color(0xFF999999).withOpacity(0.58),
                        ])),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GOLD',
                          style: whiteTextStyle.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          style: whiteTextStyle.copyWith(fontSize: 8.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'INCLUDE\nLorem ipsum dolor sit amet, consectetur adipiscing elit, ',
                          style: whiteTextStyle.copyWith(fontWeight: FontWeight.w200, fontSize: 8.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    '----BENEFIT----',
                    style: whiteTextStyle,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Image.asset('assets/images/earn_diamond.png'),
          ),
          SizedBox(
            height: 4.h,
          ),
          Center(
            child: SizedBox(
              width: 30.w,
              child: ButtonWidget(
                color: Colors.transparent,
                isColorTittleCustom: true,
                colorTittleCustom: whiteColor,
                isBorderColorOnly: true,
                colorBorder: whiteColor,
                title: 'AKTIFKAN',
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    ));
  }
}
