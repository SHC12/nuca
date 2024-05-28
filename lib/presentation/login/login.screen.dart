import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/screens.dart';
import 'package:nuca/presentation/shared/input_textfield_widget.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController tEmail = TextEditingController();
  final TextEditingController tPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
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
            ]),
          ),
        ),
        Positioned(
          bottom: 0,
          child: ClipPath(
            clipper: OvalTopBorderClipper(),
            child: Container(
              width: 100.w,
              height: 75.h,
              color: whiteColor,
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    'Sign In',
                    style: defaultBoldTextStyle.copyWith(fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur',
                    textAlign: TextAlign.center,
                    style: defaultSubTextStyle.copyWith(color: greyTextColor),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  InputTextieldWidget(
                    isObscureText: false,
                    isSuffixIcon: false,
                    isCustomColorIconPreffix: true,
                    colorCustomIconPreffix: iconGreyColor,
                    isPrefixIcon: false,
                    isFilledColor: false,
                    iconPrefix: Remix.smartphone_line,
                    title: 'Email',
                    hint: 'example@gmail.com',
                    isSubHeader: true,
                    tController: tEmail,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  InputTextieldWidget(
                    isCustomColorIconPreffix: true,
                    colorCustomIconPreffix: iconGreyColor,
                    isSuffixIcon: false,
                    isPassword: true,
                    isObscureText: true,
                    isSubHeader: true,
                    isPrefixIcon: false,
                    iconPrefix: Remix.lock_line,
                    title: 'Password',
                    hint: '*****',
                    tController: tPassword,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        // Get.to(() => const ForgotPasswordScreen());
                      },
                      child: Text(
                        'Forgot Password?',
                        style:
                            secondarySubTextStyle.copyWith(decoration: TextDecoration.underline, color: primaryColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ButtonWidget(
                      color: primaryColor,
                      title: 'Sign In',
                      onTap: () {
                        Get.to(() => ProgressScreen());
                      },
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Expanded(
                          child: Divider(
                        color: greyColor,
                      )),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        " Atau dengan ",
                        style: defaultSubTextStyle.copyWith(color: greyTextColor2, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      const Expanded(
                          child: Divider(
                        color: greyColor,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/google_logo.png'),
                      SizedBox(
                        width: 4.w,
                      ),
                      Image.asset('assets/images/facebook_logo.png'),
                      SizedBox(
                        width: 4.w,
                      ),
                      Image.asset('assets/images/instagram_logo.png'),
                      SizedBox(
                        width: 4.w,
                      ),
                      Image.asset('assets/images/twitter_logo.png'),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Belum punya akun?',
                    style: secondarySubTextStyle,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => RegistrationScreen());
                    },
                    child: Text(
                      'Daftar Disini!',
                      style: secondarySubPrimaryColorSubTextStyle.copyWith(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
