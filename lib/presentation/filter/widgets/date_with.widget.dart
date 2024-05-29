// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/filter/controllers/filter.controller.dart';
import 'package:sizer/sizer.dart';

class DateWithWidget extends StatelessWidget {
  DateWithWidget({super.key});
  FilterController filterController = Get.put(FilterController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 4.h,
            ),
            Text(
              '\t\t\t\t\tIngin berkencan dengan',
              style: defaultSubTextStyle.copyWith(fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(color: greyColor.withOpacity(0.7), blurRadius: 2, offset: const Offset(0, 2))],
                  border: Border.all(
                    color: greyColor2,
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child: RadioListTile(
                        value: 'men',
                        title: Text(
                          'Pria',
                          style: defaultSubTextStyle.copyWith(fontWeight: FontWeight.w400),
                        ),
                        controlAffinity: ListTileControlAffinity.trailing,
                        groupValue: filterController.groupValueDateWith.value,
                        onChanged: (value) {
                          filterController.groupValueDateWith.value = value!;
                        }),
                  ),
                  const Divider(
                    color: blackColor,
                    thickness: 0.1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child: RadioListTile(
                        value: 'women',
                        title: Text(
                          'Wanita',
                          style: defaultSubTextStyle.copyWith(fontWeight: FontWeight.w400),
                        ),
                        controlAffinity: ListTileControlAffinity.trailing,
                        groupValue: filterController.groupValueDateWith.value,
                        onChanged: (value) {
                          filterController.groupValueDateWith.value = value!;
                        }),
                  ),
                  const Divider(
                    color: blackColor,
                    thickness: 0.4,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child: RadioListTile(
                        value: 'all',
                        title: Text(
                          'Semuanya',
                          style: defaultSubTextStyle.copyWith(fontWeight: FontWeight.w400),
                        ),
                        controlAffinity: ListTileControlAffinity.trailing,
                        groupValue: filterController.groupValueDateWith.value,
                        onChanged: (value) {
                          filterController.groupValueDateWith.value = value!;
                        }),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
