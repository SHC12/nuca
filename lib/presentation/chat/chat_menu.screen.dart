import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuca/presentation/chat/widgets/chat_bar.widget.dart';
import 'package:nuca/presentation/chat/widgets/chats.widget.dart';
import 'package:nuca/presentation/filter/filter.screen.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class ChatMenuScreen extends StatefulWidget {
  const ChatMenuScreen({super.key});

  @override
  State<ChatMenuScreen> createState() => _ChatMenuScreenState();
}

class _ChatMenuScreenState extends State<ChatMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const FilterScreen());
                  },
                  child: Icon(
                    Remix.equalizer_fill,
                    size: 8.w,
                  ),
                ),
                Image.asset(
                  'assets/images/logo_text.png',
                ),
                Image.asset(
                  'assets/images/rocket_icon.png',
                  width: 8.w,
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            const ChatBarWidget(),
            SizedBox(
              height: 2.h,
            ),
            const ChatsWidget()
          ],
        ),
      ),
    );
  }
}
