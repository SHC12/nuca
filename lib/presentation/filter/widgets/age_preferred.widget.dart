// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/filter/controllers/filter.controller.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class AgePreferredWidget extends StatelessWidget {
  AgePreferredWidget({super.key});
  FilterController filterController = Get.put(FilterController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 4.h,
        ),
        Text(
          '\t\t\t\t\tLebih tertarik dengan usia',
          style: defaultSubTextStyle.copyWith(fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 1.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
          width: double.infinity,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [BoxShadow(color: greyColor.withOpacity(0.7), blurRadius: 2, offset: const Offset(0, 2))],
              border: Border.all(
                color: greyColor2,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Usia',
                style: defaultSubTextStyle,
              ),
              Row(
                children: [
                  Text(
                    '18',
                    style: defaultSubTextStyle,
                  ),
                  Expanded(
                    child: FlutterSlider(
                      values: const [26],
                      max: 40,
                      min: 18,
                      handler: FlutterSliderHandler(child: const Icon(Remix.checkbox_blank_circle_fill)),
                      onDragging: (handlerIndex, lowerValue, upperValue) {
                        // filterController.ageValue.value = lowerValue;
                        // _lowerValue = lowerValue;
                        // _upperValue = upperValue;
                        // setState(() {});
                      },
                    ),
                  ),
                  Text(
                    '80',
                    style: defaultSubTextStyle,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
