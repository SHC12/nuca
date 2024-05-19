import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class UploadFotoPage extends StatelessWidget {
  UploadFotoPage({super.key});

  var groupValueWant;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upload foto',
          style: defaultBoldTextStyle,
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
          style: defaultSubTextStyle.copyWith(color: greyTextColor),
        ),
        SizedBox(
          height: 2.h,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            height: 35.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/avatar_sample.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(8),
              dashPattern: [8, 4],
              color: primaryColor,
              child: Container(
                decoration: BoxDecoration(color: greyColor2, borderRadius: BorderRadius.circular(8)),
                height: 13.h,
                width: 25.w,
                child: Center(
                    child: Icon(
                  Remix.add_circle_fill,
                  color: primaryColor,
                  size: 30.sp,
                )),
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(8),
              dashPattern: [8, 4],
              color: primaryColor,
              child: Container(
                decoration: BoxDecoration(color: greyColor2, borderRadius: BorderRadius.circular(8)),
                height: 13.h,
                width: 25.w,
                child: Center(
                    child: Icon(
                  Remix.add_circle_fill,
                  color: primaryColor,
                  size: 30.sp,
                )),
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(8),
              dashPattern: [8, 4],
              color: primaryColor,
              child: Container(
                decoration: BoxDecoration(color: greyColor2, borderRadius: BorderRadius.circular(8)),
                height: 13.h,
                width: 25.w,
                child: Center(
                    child: Icon(
                  Remix.add_circle_fill,
                  color: primaryColor,
                  size: 30.sp,
                )),
              ),
            ),
          ],
        )
      ],
    );
  }
}
