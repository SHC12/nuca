import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class TimelineItemWidget extends StatelessWidget {
  final String? avatar;
  final String? name;
  final String? time;
  final String? status;
  final bool? isImageOnly;
  const TimelineItemWidget({super.key, this.avatar, this.name, this.time, this.status, this.isImageOnly});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 2.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(avatar!),
            radius: 5.h,
          ),
          SizedBox(
            width: 4.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                  style: defaultBoldTextStyle,
                ),
                SizedBox(
                  height: 0.5.h,
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
                          size: 8.sp,
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          '27',
                          style: whiteSubTextStyle.copyWith(fontSize: 8.sp),
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
                          style: whiteSubTextStyle.copyWith(fontSize: 8.sp),
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
                          style: whiteSubTextStyle.copyWith(fontSize: 8.sp),
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
                      child: Center(
                        child: Text(
                          'VIP',
                          style: whiteSubTextStyle.copyWith(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                Text(
                  time!,
                  style: secondaryGreySubTextStyle.copyWith(fontSize: 9.sp),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                Container(
                  width: double.infinity,
                  child: isImageOnly == true
                      ? Image.asset(
                          'assets/images/timeline_image.png',
                          fit: BoxFit.cover,
                        )
                      : Text(
                          status!,
                          style: defaultGreySubTextStyle,
                        ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Icon(
                      Remix.heart_3_line,
                      color: greyColor,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Icon(
                      Remix.chat_3_line,
                      color: greyColor,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Icon(
                      Remix.share_forward_line,
                      color: greyColor,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
