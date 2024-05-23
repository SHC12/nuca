import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tap_debouncer/tap_debouncer.dart';

class ButtonWidget extends StatelessWidget {
  final String? title;
  final Color? color;
  final Function()? onTap;
  final bool? isIconOnly;
  final IconData? icon;
  final bool? isPrefix;
  final bool? isSuffix;
  final bool? isColorIconCustom;
  final bool? isColorTittleCustom;
  final Color? colorIconCustom;
  final Color? colorTittleCustom;
  final bool? isBold;
  final bool? isBorderColorOnly;
  const ButtonWidget(
      {Key? key,
      this.title,
      this.color,
      this.onTap,
      this.isIconOnly,
      this.icon,
      this.isPrefix,
      this.isSuffix,
      this.isColorIconCustom,
      this.colorIconCustom,
      this.isColorTittleCustom,
      this.colorTittleCustom,
      this.isBold,
      this.isBorderColorOnly})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TapDebouncer(
        onTap: () async {
          onTap!();
        },
        cooldown: const Duration(milliseconds: 1000),
        builder: (BuildContext context, TapDebouncerFunc? onTapDebouncer) {
          return ElevatedButton(
            onPressed: onTapDebouncer,
            style: isBorderColorOnly == true
                ? ElevatedButton.styleFrom(
                    backgroundColor: color,
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: primaryColor),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                : ElevatedButton.styleFrom(
                    backgroundColor: color,
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
            child: isIconOnly == null
                ? isPrefix == true
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(icon),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            title!,
                            style: whiteTextStyle.copyWith(
                                fontSize: 7.sp,
                                fontWeight: FontWeight.bold,
                                color: isColorTittleCustom == true ? colorTittleCustom : null),
                          ),
                        ],
                      )
                    : isSuffix == true
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                title!,
                                style: whiteTextStyle.copyWith(
                                    fontSize: 7.sp,
                                    fontWeight: FontWeight.bold,
                                    color: isColorTittleCustom == true ? colorTittleCustom : null),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Icon(
                                icon,
                              ),
                            ],
                          )
                        : Text(
                            title!,
                            style: whiteTextStyle.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                color: isColorTittleCustom == true ? colorTittleCustom : null),
                          )
                : Icon(
                    icon,
                    color: isColorIconCustom == true ? colorIconCustom : null,
                  ),
          );
        });
  }
}
