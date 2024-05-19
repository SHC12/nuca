import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/shared/input_textfield_widget.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class DateOfBirthPage extends StatelessWidget {
  const DateOfBirthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tanggal Lahir',
          style: defaultBoldTextStyle,
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
          style: defaultSubTextStyle.copyWith(color: greyTextColor),
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: InputTextieldWidget(
                isOnlyTextfield: true,

                isFilledColor: true,

                hint: 'DD',
                isSubHeader: true,
                // tController: tEmail,
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            Flexible(
              flex: 1,
              child: InputTextieldWidget(
                isOnlyTextfield: true,
                isFilledColor: true,
                hint: 'MM',
                isSubHeader: true,
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            Flexible(
              flex: 1,
              child: InputTextieldWidget(
                isOnlyTextfield: true,
                isFilledColor: true,
                hint: 'YYYY',
                isSubHeader: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
