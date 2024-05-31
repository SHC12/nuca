import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class FamilyItemWidget extends StatelessWidget {
  final String? avatar;
  final String? name;
  const FamilyItemWidget({super.key, this.avatar, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2.h),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(avatar!),
            radius: 4.h,
          ),
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
                      ImageIcon(
                        AssetImage('assets/images/navbar_icons/profile_icon_inactive.png'),
                        size: 8.sp,
                        color: whiteColor,
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
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
