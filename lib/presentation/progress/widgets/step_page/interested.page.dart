import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/shared/input_textfield_widget.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
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
          style: defaultSubTextStyle.copyWith(color: greyTextColor),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: 80.w,
          // height: 20.h,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: primaryColor,
              )),
          child: Column(
            children: [
              // Padding(
              //   padding: EdgeInsets.only(top: 1.h, left: 4.w, right: 4.w),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Text(
              //         'Pria',
              //         style: primarySubTextStyle,
              //       ),

              //     ],
              //   ),
              // ),
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
              Divider(
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
              Divider(
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
