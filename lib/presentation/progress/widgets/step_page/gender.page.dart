import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
import 'package:sizer/sizer.dart';

class GenderPage extends StatelessWidget {
  const GenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Jenis Kelamin',
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
        SizedBox(
          width: 100.w,
          child: ButtonWidget(
            title: 'Laki-laki',
            isBorderColorOnly: true,
            color: whiteColor,
            isColorTittleCustom: true,
            colorTittleCustom: primaryColor,
            onTap: () {},
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        SizedBox(
          width: 100.w,
          child: ButtonWidget(
            title: 'Perempuan',
            isBorderColorOnly: true,
            color: whiteColor,
            isColorTittleCustom: true,
            colorTittleCustom: primaryColor,
            onTap: () {},
          ),
        )
      ],
    );
  }
}
