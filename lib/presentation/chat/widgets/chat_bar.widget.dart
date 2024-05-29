import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChatBarWidget extends StatelessWidget {
  const ChatBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 12.h,
              width: 12.h,
              margin: EdgeInsets.symmetric(horizontal: 1.w),
              decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage('assets/images/avatar_sample_2.png')),
                borderRadius: BorderRadius.circular(18),
              )),
          Container(
              height: 12.h,
              width: 12.h,
              margin: EdgeInsets.symmetric(horizontal: 1.w),
              decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage('assets/images/avatar_sample_6.png')),
                borderRadius: BorderRadius.circular(18),
              )),
          Container(
              height: 12.h,
              width: 12.h,
              margin: EdgeInsets.symmetric(horizontal: 1.w),
              decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage('assets/images/avatar_sample_4.png')),
                borderRadius: BorderRadius.circular(18),
              )),
          Container(
              height: 12.h,
              width: 12.h,
              margin: EdgeInsets.symmetric(horizontal: 1.w),
              decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage('assets/images/avatar_sample_5.png')),
                borderRadius: BorderRadius.circular(18),
              )),
        ],
      ),
    );
  }
}
