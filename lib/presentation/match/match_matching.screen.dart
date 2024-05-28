import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/match/controllers/match.controller.dart';
import 'package:nuca/presentation/quiz/controllers/quiz.controller.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class MatchMatchingScreen extends StatefulWidget {
  const MatchMatchingScreen({super.key});

  @override
  State<MatchMatchingScreen> createState() => _MatchMatchingScreenState();
}

class _MatchMatchingScreenState extends State<MatchMatchingScreen> {
  MatchController matchController = Get.put(MatchController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    matchController.matchMatching();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [SizedBox(), Image.asset('assets/images/logo_text_white.png', scale: 02), SizedBox()],
              ),
            ),
            Flexible(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 36.h,
                          width: double.infinity,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFF161616)),
                        ),
                        Container(
                          height: 30.h,
                          width: double.infinity,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFF2a2a2a)),
                        ),
                        Container(
                          height: 20.h,
                          width: double.infinity,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFF3d3d3d)),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/avatar_sample.png',
                          ),
                          radius: 6.h,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text('Matching jawaban kamu...',
                        style: whiteTextStyle.copyWith(fontSize: 12.sp), textAlign: TextAlign.center),
                  ],
                )),
            Flexible(flex: 1, child: Icon(Remix.close_circle_line, color: whiteColor, size: 18.w)),
          ],
        ),
      ),
    );
  }
}
