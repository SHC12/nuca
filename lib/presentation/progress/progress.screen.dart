import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/home/home.screen.dart';
import 'package:nuca/presentation/home/navbar_bottom.screen.dart';
import 'package:nuca/presentation/progress/widgets/step_page/dob.page.dart';
import 'package:nuca/presentation/progress/widgets/step_page/gender.page.dart';
import 'package:nuca/presentation/progress/widgets/step_page/interested.page.dart';
import 'package:nuca/presentation/progress/widgets/step_page/name.page.dart';
import 'package:nuca/presentation/progress/widgets/step_page/upload_foto.page.dart';
import 'package:nuca/presentation/progress/widgets/step_page/want_to_meet.page.dart';
import 'package:nuca/presentation/shared/input_textfield_widget.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

import 'controllers/progress.controller.dart';

class ProgressScreen extends GetView<ProgressController> {
  ProgressScreen({Key? key}) : super(key: key);

  ProgressController progressController = Get.put(ProgressController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Obx(() => Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset('assets/images/logo_text.png')),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 60.w,
                        child: LinearProgressIndicator(
                          value: controller.indexStepPage.value / 6,
                          minHeight: 1.4.h,
                          color: primaryColor,
                          backgroundColor: greyColor2,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        '${controller.indexStepPage.value}/6',
                        style: primaryBoldTextStyle,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  controller.indexStepPage.value == 1
                      ? NamePage()
                      : controller.indexStepPage.value == 2
                          ? DateOfBirthPage()
                          : controller.indexStepPage.value == 3
                              ? GenderPage()
                              : controller.indexStepPage.value == 4
                                  ? InterestedPage()
                                  : controller.indexStepPage.value == 5
                                      ? WantToMeetPage()
                                      : controller.indexStepPage.value == 6
                                          ? UploadFotoPage()
                                          : SizedBox(),
                  Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        controller.indexStepPage.value == 1
                            ? SizedBox()
                            : SizedBox(
                                height: 8.h,
                                width: 40.w,
                                child: ButtonWidget(
                                  color: whiteColor,
                                  isColorTittleCustom: true,
                                  colorTittleCustom: primaryColor,
                                  isBorderColorOnly: true,
                                  title: 'Kembali',
                                  onTap: () {
                                    if (controller.indexStepPage.value != 1) {
                                      controller.previousPage();
                                    }
                                  },
                                ),
                              ),
                        SizedBox(
                          height: 8.h,
                          width: 40.w,
                          child: ButtonWidget(
                            color: primaryColor,
                            title: 'Selanjutnya',
                            onTap: () {
                              if (controller.indexStepPage.value < 6) {
                                controller.nextPage();
                              } else if (controller.indexStepPage.value == 6) {
                                Get.off(() => NavbarBottomScreen());
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            )));
  }
}
