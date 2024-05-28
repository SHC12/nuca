import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/progress/progress.screen.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

import 'controllers/otp.controller.dart';

class OtpScreen extends GetView<OtpController> {
  OtpScreen({Key? key}) : super(key: key);

  TextEditingController tOTP = TextEditingController();
  final focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    const length = 4;
    const borderColor = Color.fromRGBO(114, 178, 238, 1);
    const errorColor = Color.fromRGBO(255, 234, 238, 1);
    const fillColor = Color.fromRGBO(222, 231, 240, .57);
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: secondarySubTextStyle,
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Center(
              child: Image.asset('assets/images/logo_text.png'),
            ),
          ),
          Flexible(
            flex: 4,
            child: Column(
              children: [
                Text(
                  'Masukkan kode OTP',
                  style: defaultBoldTextStyle.copyWith(fontSize: 20.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 10.h,
                  child: Pinput(
                    length: length,
                    controller: tOTP,
                    focusNode: focusNode,
                    defaultPinTheme: defaultPinTheme,
                    onCompleted: (pin) {},
                    focusedPinTheme: defaultPinTheme.copyWith(
                      height: 68,
                      width: 64,
                      decoration: defaultPinTheme.decoration!.copyWith(
                        border: Border.all(color: borderColor),
                      ),
                    ),
                    errorPinTheme: defaultPinTheme.copyWith(
                      decoration: BoxDecoration(
                        color: errorColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
              flex: 1,
              child: SizedBox(
                  width: 40.w,
                  child: ButtonWidget(
                      color: primaryColor,
                      title: 'Masuk',
                      onTap: () {
                        Get.to(() => ProgressScreen());
                      }))),
        ],
      ),
    ));
  }
}
