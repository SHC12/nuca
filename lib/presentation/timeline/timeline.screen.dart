import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/timeline/widgets/family_list.widget.dart';
import 'package:nuca/presentation/timeline/widgets/header_timeline.widget.dart';
import 'package:nuca/presentation/timeline/widgets/timeline_list.widget.dart';
import 'package:sizer/sizer.dart';

import 'controllers/timeline.controller.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({super.key});

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  TimelineController timelineController = Get.put(TimelineController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
            child: SingleChildScrollView(
              child: Obx(
                () => Column(
                  children: [
                    HeaderTimelineWidget(),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            timelineController.isTimelineTab.value = true;
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                              decoration: timelineController.isTimelineTab.value
                                  ? BoxDecoration(
                                      color: const Color(0xFFADB6E2), borderRadius: BorderRadius.circular(18))
                                  : null,
                              child: Text(
                                'Timeline',
                                style: defaultSubTextStyle.copyWith(
                                    color: timelineController.isTimelineTab.value ? whiteColor : greyColor),
                              )),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            timelineController.isTimelineTab.value = false;
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                              decoration: timelineController.isTimelineTab.value
                                  ? null
                                  : BoxDecoration(
                                      color: const Color(0xFFADB6E2), borderRadius: BorderRadius.circular(18)),
                              child: Text(
                                'Family',
                                style: defaultSubTextStyle.copyWith(
                                    color: timelineController.isTimelineTab.value ? greyColor : whiteColor),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    timelineController.isTimelineTab.value ? const TimelineListWidget() : const FamilyListWidget()
                  ],
                ),
              ),
            )));
  }
}
