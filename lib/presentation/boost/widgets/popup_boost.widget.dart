import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';

import 'package:sizer/sizer.dart';

class PopUpBoostWidget extends StatelessWidget {
  final String? subTitle;
  final Function()? onPressed;

  const PopUpBoostWidget({
    Key? key,
    this.subTitle,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 80.w,
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            decoration: BoxDecoration(
                color: whiteColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0.0, 0.0),
                  ),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Text('BOOST akun kamu sekarang',
                      textAlign: TextAlign.center,
                      style: defaultBoldTextStyle.copyWith(
                        fontSize: 12.sp,
                      )),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Center(
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                      textAlign: TextAlign.center,
                      style: defaultSubTextStyle.copyWith(color: greyColor)),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ButtonWidget(
                      color: primaryColor, title: 'Boost', onTap: onPressed),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: size.height * 1 / 4.5,
          child: Image.asset(
            'assets/images/rocket.png',
            height: 25.h,
          ),
        ),
      ],
    );
  }
}
