import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/timeline/widgets/family_item.widget.dart';
import 'package:sizer/sizer.dart';

class FamilyListWidget extends StatefulWidget {
  const FamilyListWidget({super.key});

  @override
  State<FamilyListWidget> createState() => _FamilyListWidgetState();
}

class _FamilyListWidgetState extends State<FamilyListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Viral baru baru ini',
            style: defaultTextStyle,
          ),
          SizedBox(
            height: 2.h,
          ),
          const FamilyItemWidget(
            avatar: 'assets/images/family_viral_2.png',
            name: 'Cerita Sebelum Bobo',
          ),
          const FamilyItemWidget(
            avatar: 'assets/images/family_viral_1.png',
            name: 'Horror Story',
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            'Paling banyak dilihat',
            style: defaultTextStyle,
          ),
          SizedBox(
            height: 2.h,
          ),
          const FamilyItemWidget(
            avatar: 'assets/images/family_most_see_2.png',
            name: 'Flat Earth',
          ),
          const FamilyItemWidget(
            avatar: 'assets/images/family_most_see_1.png',
            name: 'Curhatan 2023',
          ),
          SizedBox(
            height: 2.h,
          ),
        ],
      ),
    );
  }
}
