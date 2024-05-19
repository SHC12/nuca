// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/registration/controllers/registration.controller.dart';
import 'package:nuca/presentation/shared/input_textfield_widget.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class RegistrationScreen extends GetView<RegistrationController> {
  RegistrationScreen({Key? key}) : super(key: key);

  RegistrationController registrationController =
      Get.put(RegistrationController());

  final TextEditingController tName = TextEditingController();
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      'Create Account',
                      style: defaultTextStyle.copyWith(fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 1.h,
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
                      title: 'Name',
                      hint: 'example',
                      isSubHeader: true,
                      tController: tEmail,
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
                    Obx(() => Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                  visualDensity: VisualDensity.compact,
                                  value: registrationController.isAgree.value,
                                  activeColor: primaryColor,
                                  onChanged: (value) {
                                    registrationController.isAgree.value =
                                        value!;
                                  }),
                              SizedBox(
                                width: 2.w,
                              ),
                              Flexible(
                                child: Row(
                                  children: [
                                    Text(
                                      'Agree with',
                                      style: defaultSubTextStyle,
                                    ),
                                    Text(
                                      ' Terms and Conditions',
                                      style: primarySubTextStyle,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 2.h,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: ButtonWidget(
                        color: primaryColor,
                        title: 'Sign Up',
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                            child: Divider(
                          color: greyColor,
                        )),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          " Atau dengan ",
                          style: defaultSubTextStyle.copyWith(
                              color: greyTextColor2,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Expanded(
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
                      'Sudah punya akun?',
                      style: defaultSubTextStyle,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'Masuk',
                        style: primarySubTextStyle.copyWith(
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
