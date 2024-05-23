// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:sizer/sizer.dart';

class WantToMeetPage extends StatelessWidget {
  WantToMeetPage({super.key});

  var groupValueWant;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ingin bertemu\ndengan?',
          style: defaultBoldTextStyle,
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
          style: defaultSubTextStyle.copyWith(color: greyTextColor),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: 80.w,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: primaryColor,
              )),
          child: Column(
            children: [
              RadioListTile(
                  value: 'beloved',
                  title: Text(
                    'Kekasih',
                    style: primarySubTextStyle,
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  groupValue: groupValueWant,
                  onChanged: (value) {
                    groupValueWant = value;
                  }),
              const Divider(
                color: primaryColor,
                thickness: 1,
              ),
              RadioListTile(
                  value: 'casual',
                  title: Text(
                    'Sesuatu yang casual',
                    style: primarySubTextStyle,
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  groupValue: groupValueWant,
                  onChanged: (value) {
                    groupValueWant = value;
                  }),
              const Divider(
                color: primaryColor,
                thickness: 1,
              ),
              RadioListTile(
                  value: 'not_sure',
                  title: Text(
                    'Tidak yakin',
                    style: primarySubTextStyle,
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  groupValue: groupValueWant,
                  onChanged: (value) {
                    groupValueWant = value;
                  }),
            ],
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: 80.w,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: primaryColor,
              )),
          child: Column(
            children: [
              RadioListTile(
                  value: 'none',
                  title: Text(
                    'Tidak ingin membicarakannya',
                    style: primarySubTextStyle,
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  groupValue: groupValueWant,
                  onChanged: (value) {
                    groupValueWant = value;
                  }),
            ],
          ),
        )
      ],
    );
  }
}
