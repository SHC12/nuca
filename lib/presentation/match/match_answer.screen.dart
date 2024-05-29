// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/match/match_matching.screen.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
import 'package:sizer/sizer.dart';

class MatchAnswerScreen extends StatefulWidget {
  const MatchAnswerScreen({super.key});

  @override
  State<MatchAnswerScreen> createState() => _MatchAnswerScreenState();
}

class _MatchAnswerScreenState extends State<MatchAnswerScreen> {
  var groupValueInterested;
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
          SizedBox(
            height: 2.h,
          ),
          Container(
            width: 80.w,
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(children: [
              Text(
                'Zodiak kesukaan kalian apanih?',
                style: defaultBoldTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1.h,
              ),
              RadioListTile(
                  value: 'women',
                  visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  title: Text(
                    'Gemini',
                    style: defaultSubTextStyle,
                  ),
                  groupValue: groupValueInterested,
                  onChanged: (value) {
                    groupValueInterested = value;
                  }),
              RadioListTile(
                  value: 'women',
                  visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  title: Text(
                    'Taurus',
                    style: defaultSubTextStyle,
                  ),
                  groupValue: groupValueInterested,
                  onChanged: (value) {
                    groupValueInterested = value;
                  }),
              RadioListTile(
                  visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: 'women',
                  title: Text(
                    'Cancer',
                    style: defaultSubTextStyle,
                  ),
                  groupValue: groupValueInterested,
                  onChanged: (value) {
                    groupValueInterested = value;
                  }),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                width: 60.w,
                child: ButtonWidget(
                  color: primaryColor,
                  title: 'Submit',
                  onTap: () {
                    Get.to(() => const MatchMatchingScreen());
                  },
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
