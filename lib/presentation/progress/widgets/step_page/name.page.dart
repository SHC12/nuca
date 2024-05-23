import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/shared/input_textfield_widget.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class NamePage extends StatelessWidget {
  const NamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nama Kamu',
          style: defaultBoldTextStyle,
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
          style: defaultSubTextStyle.copyWith(color: greyTextColor),
        ),
        InputTextieldWidget(
          isObscureText: false,
          isSuffixIcon: false,
          isOnlyTextfield: true,
          isCustomColorIconPreffix: true,
          colorCustomIconPreffix: iconGreyColor,
          isPrefixIcon: false,
          isFilledColor: false,
          iconPrefix: Remix.smartphone_line,
          title: 'nama',
          hint: 'Tulis Nama',
          isSubHeader: true,
          // tController: tEmail,
        ),
      ],
    );
  }
}
