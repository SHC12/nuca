import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:sizer/sizer.dart';

import 'controllers/quiz.controller.dart';

class QuizScreen extends GetView<QuizController> {
  QuizScreen({Key? key}) : super(key: key);

  QuizController quizController = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      backgroundColor: splashColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/logo_text_white.png', scale: 02),
          ),
          Text(
            'QUIZ',
            style: defaultBoldTextStyle.copyWith(color: whiteColor, fontSize: 36.sp),
          ),
        ],
      ),
    );
  }
}
