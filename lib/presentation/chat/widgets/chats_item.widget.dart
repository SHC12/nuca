import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/chat/chat.screen.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class ChatsItemWidget extends StatelessWidget {
  final String? avatar;
  final String? name;
  final String? lastMessage;
  final String? time;
  const ChatsItemWidget({super.key, this.avatar, this.name, this.lastMessage, this.time});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const ChatScreen());
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 2.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              CircleAvatar(
                backgroundImage: AssetImage(avatar!),
                radius: 4.h,
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(90.0),
                          color: Colors.green)))
            ]),
            SizedBox(
              width: 4.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            name!,
                            style: defaultBoldTextStyle,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                            decoration: BoxDecoration(
                              color: chipBackgroundGenderColor,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(children: [
                              Icon(
                                Remix.women_line,
                                color: whiteColor,
                                size: 12.sp,
                              ),
                            ]),
                          ),
                        ],
                      ),
                      Text(
                        time!,
                        style: defaultGreySubTextStyle,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  lastMessage!,
                  style: defaultGreySubTextStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
