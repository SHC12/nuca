// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:sizer/sizer.dart';

class InterestedPage extends StatelessWidget {
  InterestedPage({super.key});

  var groupValueInterested;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tertarik dengan',
          style: defaultBoldTextStyle,
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
          style: secondarySubTextStyle.copyWith(color: greyTextColor),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: primaryColor,
              )),
          child: Column(
            children: [
              RadioListTile(
                  value: 'men',
                  title: Text(
                    'Pria',
                    style: primarySubTextStyle,
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  groupValue: groupValueInterested,
                  onChanged: (value) {
                    groupValueInterested = value;
                  }),
              const Divider(
                color: primaryColor,
                thickness: 1,
              ),
              RadioListTile(
                  value: 'women',
                  title: Text(
                    'Wanita',
                    style: primarySubTextStyle,
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  groupValue: groupValueInterested,
                  onChanged: (value) {
                    groupValueInterested = value;
                  }),
              const Divider(
                color: primaryColor,
                thickness: 1,
              ),
              RadioListTile(
                  value: 'all',
                  title: Text(
                    'Semuanya',
                    style: primarySubTextStyle,
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  groupValue: groupValueInterested,
                  onChanged: (value) {
                    groupValueInterested = value;
                  }),
            ],
          ),
        )
      ],
    );
  }
}
