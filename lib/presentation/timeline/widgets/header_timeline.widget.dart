import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/boost/controllers/boost.controller.dart';
import 'package:nuca/presentation/screens.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class HeaderTimelineWidget extends StatelessWidget {
  HeaderTimelineWidget({super.key});

  BoostController boostController = Get.put(BoostController());

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
                Remix.equalizer_line,
                size: 8.w,
              ),
            ),
            Image.asset(
              'assets/images/logo_text.png',
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      boostController.popUpBoost('asdaw', () => null);
                    },
                    child: Icon(
                      Remix.add_circle_fill,
                      size: 9.3.w,
                      color: primaryColor,
                    )),
                SizedBox(
                  width: 2.w,
                ),
                GestureDetector(
                  onTap: () {
                    boostController.popUpBoost('asdaw', () => null);
                  },
                  child: Image.asset(
                    'assets/images/rocket_icon.png',
                    width: 8.w,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }
}
