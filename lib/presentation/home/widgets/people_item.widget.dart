import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class PeopleItemWidget extends StatelessWidget {
  final String? avatar;
  final String? name;
  final String? status;
  PeopleItemWidget({super.key, this.avatar, this.name, this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            CircleAvatar(
              backgroundImage: AssetImage(avatar!),
              radius: 4.h,
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                    padding: EdgeInsets.all(2.w),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(90.0),
                        color: Colors.green)))
          ]),
          SizedBox(
            width: 4.w,
          ),
          Column(
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
                        size: 10.sp,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        '27',
                        style: whiteSubTextStyle.copyWith(),
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
                        style: whiteSubTextStyle.copyWith(),
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
                        style: whiteSubTextStyle.copyWith(),
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
                        style: whiteSubTextStyle.copyWith(),
                      )
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                status!,
                style: defaultSubTextStyle.copyWith(color: greyTextColor, fontWeight: FontWeight.w100),
              )
            ],
          )
        ],
      ),
    );
  }
}
