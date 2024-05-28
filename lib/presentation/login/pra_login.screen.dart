import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/home/navbar_bottom.screen.dart';
import 'package:nuca/presentation/login/login.screen.dart';
import 'package:nuca/presentation/registration/registration.screen.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
import 'package:sizer/sizer.dart';

import 'controllers/login.controller.dart';

class PraLoginScreen extends GetView<LoginController> {
  const PraLoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            width: 100.w,
            height: 45.h,
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
              children: [
                SizedBox(
                  height: 14.h,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: 'Find More', style: defaultTextStyle.copyWith(color: secondaryColor, fontSize: 16.sp)),
                  TextSpan(
                      text: ' Your Love', style: defaultBoldTextStyle.copyWith(fontSize: 16.sp, color: blackColor)),
                ])),
                Text(
                  'With Happines',
                  style: defaultBoldTextStyle.copyWith(fontSize: 16.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  textAlign: TextAlign.center,
                  style: secondarySubTextStyle,
                ),
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ButtonWidget(
                    color: primaryColor,
                    title: "Let's Get Started",
                    onTap: () {
                      Get.to(() => LoginScreen());
                      // Get.to(() => const NavbarBottomScreen());
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun',
                      style: secondarySubTextStyle,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => RegistrationScreen());
                      },
                      child: Text(
                        'Daftar Disini!',
                        style:
                            secondarySubTextStyle.copyWith(decoration: TextDecoration.underline, color: primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: SizedBox(
              width: 100.w,
              height: 65.h,
              child: Stack(children: [
                SizedBox(
                  width: 100.w,
                  child: Image.asset(
                    'assets/images/pra_login_background.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  top: -380,
                  left: 0,
                  right: 0,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ]),
            ),
          ),
        ),
      ],
    ));
  }
}
