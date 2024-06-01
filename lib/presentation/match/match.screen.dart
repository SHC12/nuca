// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:sizer/sizer.dart';

import 'controllers/match.controller.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  MatchController matchController = Get.put(MatchController());
  @override
  void initState() {
    super.initState();
    matchController.matchAnswerStart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/logo_text_white.png', scale: 02),
          ),
          Text(
            'MATCH',
            style: defaultBoldTextStyle.copyWith(color: whiteColor, fontSize: 36.sp),
          ),
        ],
      ),
    );
  }
}
