import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/screens.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => const FilterScreen());
              },
              child: Icon(
                Remix.equalizer_fill,
                size: 8.w,
              ),
            ),
            Image.asset(
              'assets/images/logo_text.png',
            ),
            Image.asset(
              'assets/images/rocket_icon.png',
              width: 8.w,
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          children: [
            Flexible(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => QuizScreen());
                  },
                  child: Container(
                    height: 10.h,
                    padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
                    decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(18)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/quiz_icon.png',
                          width: 8.w,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          'Quiz',
                          style: defaultBoldTextStyle.copyWith(color: greyTextColor3, fontSize: 14.sp),
                        )
                      ],
                    ),
                  ),
                )),
            SizedBox(
              width: 4.w,
            ),
            Flexible(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => MatchScreen());
                  },
                  child: Container(
                    height: 10.h,
                    padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
                    decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(18)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/match_icon.png',
                          width: 8.w,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          'Match',
                          style: defaultBoldTextStyle.copyWith(color: greyTextColor3, fontSize: 14.sp),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 4.h,
        )
      ],
    );
  }
}
