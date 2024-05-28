import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/quiz/quiz_matching.screen.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
import 'package:sizer/sizer.dart';

class QuizAnswerScreen extends StatefulWidget {
  const QuizAnswerScreen({super.key});

  @override
  State<QuizAnswerScreen> createState() => _QuizAnswerScreenState();
}

class _QuizAnswerScreenState extends State<QuizAnswerScreen> {
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
                'Kalau hujan sukanya makan apa ?',
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
                    'Gorengan',
                    style: defaultSubTextStyle,
                  ),
                  // controlAffinity: ListTileControlAffinity.trailing,
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
                    'Mie Rebus',
                    style: defaultSubTextStyle,
                  ),

                  // controlAffinity: ListTileControlAffinity.trailing,
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
                    'Martabak Manis',
                    style: defaultSubTextStyle,
                  ),
                  // controlAffinity: ListTileControlAffinity.trailing,
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
                    Get.to(() => QuizMatchingScreen());
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
