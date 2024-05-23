// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:remixicon_updated/remixicon_updated.dart';
import 'package:sizer/sizer.dart';

class InputTextieldWidget extends StatefulWidget {
  final String? title;
  final String? hint;
  final String? initialValue;
  final TextEditingController? tController;
  final TextInputType? inputType;
  final bool? currency;
  final bool? readOnly;
  final bool? isOnlyTextfield;
  final bool? isFilledColor;
  final bool? isBoldTittle;
  final bool? isRequired;
  final bool? isBold;
  final bool? isOnlyNumber;
  final bool? isSubHeader;
  final bool? isSuffixIcon;
  final bool? isPrefixIcon;
  final bool? isPassword;
  final bool? isCustomColorIconPreffix;
  bool? isObscureText;
  final IconData? iconSuffix;
  final IconData? iconPrefix;
  final Color? colorCustomIconPreffix;
  final Function()? onTap;
  final Function()? onTapSuffix;

  InputTextieldWidget(
      {Key? key,
      this.hint,
      this.tController,
      this.onTap,
      this.inputType,
      this.currency,
      this.readOnly,
      this.initialValue,
      this.isFilledColor,
      this.title,
      this.isBoldTittle,
      this.isRequired,
      this.isBold,
      this.isSubHeader,
      this.isSuffixIcon,
      this.iconSuffix,
      this.onTapSuffix,
      this.isObscureText,
      this.isOnlyNumber,
      this.isPassword,
      this.isPrefixIcon,
      this.iconPrefix,
      this.isOnlyTextfield,
      this.isCustomColorIconPreffix,
      this.colorCustomIconPreffix})
      : super(key: key);

  @override
  State<InputTextieldWidget> createState() => _InputTextieldWidgetState();
}

class _InputTextieldWidgetState extends State<InputTextieldWidget> {
  static const _locale = 'id';
  String _formatNumber(String s) => NumberFormat.decimalPattern(_locale).format(s.isEmpty ? 0 : int.parse(s));
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 1.5.h),
        Row(
          children: widget.isOnlyTextfield == true
              ? []
              : [
                  Text(
                    widget.title!,
                    style: defaultTextStyle.copyWith(
                        fontSize: widget.isSubHeader == true ? 10.sp : 12.sp,
                        fontWeight: widget.isBold == null ? FontWeight.bold : FontWeight.normal),
                  ),
                  Visibility(
                    visible: widget.isRequired == true ? true : false,
                    child: Text(
                      ' *',
                      style: defaultTextStyle.copyWith(color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
        ),
        SizedBox(height: 1.h),
        Container(
          child: widget.isSuffixIcon == null
              ? TextField(
                  obscureText: widget.isObscureText == null ? false : true,
                  keyboardType: widget.inputType,
                  controller: widget.tController,
                  onTap: widget.onTap,
                  readOnly: widget.readOnly == null ? false : true,
                  inputFormatters: widget.currency == true || widget.isOnlyNumber == true
                      ? <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                        ]
                      : null,
                  onChanged: widget.currency == true
                      ? (string) {
                          string = _formatNumber(string.replaceAll('.', ''));
                          widget.tController!.value = TextEditingValue(
                            text: string,
                            selection: TextSelection.collapsed(offset: string.length),
                          );
                        }
                      : (string) {},
                  decoration: InputDecoration(
                      prefixIcon: widget.isPrefixIcon == true
                          ? Icon(
                              widget.iconPrefix,
                              color: widget.isCustomColorIconPreffix == true
                                  ? widget.colorCustomIconPreffix
                                  : primaryColor,
                            )
                          : null,
                      filled: widget.isFilledColor == true ? true : false,
                      fillColor: widget.readOnly == true ? fillTextfieldColor : backgroundTextfieldColor2,
                      contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
                      hintText: widget.hint,
                      hintStyle: defaultTextStyle.copyWith(fontSize: 12.sp, color: hintColor),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: primaryColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: widget.isFilledColor == true ? primaryColor : greyTextColor),
                          borderRadius: BorderRadius.circular(10))),
                )
              : SizedBox(
                  height: 7.h,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 5,
                        child: SizedBox(
                          height: double.infinity,
                          width: double.infinity,
                          child: TextField(
                            obscureText: widget.isObscureText!,
                            onTap: widget.onTap,
                            keyboardType: widget.inputType,
                            controller: widget.tController,
                            readOnly: widget.readOnly == null ? false : true,
                            onChanged: widget.currency == true
                                ? (string) {
                                    string = _formatNumber(string.replaceAll('.', ''));
                                    widget.tController!.value = TextEditingValue(
                                      text: string,
                                      selection: TextSelection.collapsed(offset: string.length),
                                    );
                                  }
                                : (string) {},
                            decoration: InputDecoration(
                                prefixIcon: widget.isPrefixIcon == true
                                    ? Icon(
                                        widget.iconPrefix,
                                        color: widget.isCustomColorIconPreffix == true
                                            ? widget.colorCustomIconPreffix
                                            : primaryColor,
                                      )
                                    : null,
                                suffixIcon: widget.isSuffixIcon == true
                                    ? GestureDetector(
                                        onTap: widget.onTapSuffix,
                                        child: Icon(
                                          widget.iconSuffix,
                                          size: 16.sp,
                                          color: widget.isCustomColorIconPreffix == true
                                              ? widget.colorCustomIconPreffix
                                              : primaryColor,
                                        ),
                                      )
                                    : widget.isPassword == true
                                        ? GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                if (widget.isObscureText == false) {
                                                  widget.isObscureText = true;
                                                } else {
                                                  widget.isObscureText = false;
                                                }
                                              });
                                            },
                                            child: Icon(
                                              widget.isObscureText == true ? Remix.eye_off_fill : Remix.eye_fill,
                                              size: 16.sp,
                                              color: widget.isCustomColorIconPreffix == true
                                                  ? widget.colorCustomIconPreffix
                                                  : primaryColor,
                                            ),
                                          )
                                        : null,
                                filled: widget.isFilledColor == true ? false : true,
                                fillColor: widget.readOnly == true ? fillTextfieldColor : backgroundTextfieldColor,
                                contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
                                hintText: widget.hint,
                                hintStyle: defaultTextStyle.copyWith(fontSize: 12.sp, color: hintColor),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: backgroundTextfieldColor),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: widget.isFilledColor == true ? secondaryColor : greyTextColor),
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ],
    );
  }
}
