import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/home/widgets/people_item.widget.dart';
import 'package:sizer/sizer.dart';

class PeopleListWidget extends StatelessWidget {
  const PeopleListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                decoration: BoxDecoration(color: chipBackgroundColor, borderRadius: BorderRadius.circular(12)),
                child: Text(
                  'Rekomendasi',
                  style: defaultSubTextStyle.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                child: Text(
                  'Mengikuti',
                  style: defaultSubTextStyle.copyWith(color: greyTextColor, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                child: Text(
                  'Rekomendasi',
                  style: defaultSubTextStyle.copyWith(color: greyTextColor, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          const PeopleItemWidget(),
          const PeopleItemWidget(),
          const PeopleItemWidget(),
          const PeopleItemWidget(),
          const PeopleItemWidget(),
          const PeopleItemWidget(),
          const PeopleItemWidget(),
        ],
      ),
    );
  }
}
