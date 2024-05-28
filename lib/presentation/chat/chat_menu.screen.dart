import 'dart:convert';
import 'dart:io';

// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
// import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:mime/mime.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/chat/widgets/chat_bar.widget.dart';
import 'package:nuca/presentation/chat/widgets/chats.widget.dart';
import 'package:nuca/presentation/filter/filter.screen.dart';
import 'package:nuca/presentation/home/widgets/header.widget.dart';
import 'package:path_provider/path_provider.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';
// import 'package:uuid/uuid.dart';

import 'controllers/chat.controller.dart';

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
                    Get.to(() => FilterScreen());
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
            ChatBarWidget(),
            SizedBox(
              height: 2.h,
            ),
            ChatsWidget()
          ],
        ),
      ),
    );
  }
}
