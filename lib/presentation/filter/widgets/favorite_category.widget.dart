import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/filter/controllers/filter.controller.dart';
import 'package:nuca/presentation/shared/widgets/button.widget.dart';
import 'package:sizer/sizer.dart';

class FavoriteCategoryWidget extends StatelessWidget {
  FavoriteCategoryWidget({super.key});
  FilterController filterController = Get.put(FilterController());

  var lifeStyleList = ['Clubbing', 'Traveling', 'Bowling', 'Games', 'Drift', 'Holidays'];
  var musicList = ['Rock', 'POP', 'JAZZ', 'Country', 'KPOP', 'Religi'];
  var bookList = ['Komik', 'Novel', 'Berita', 'Surat Kabar', 'Buku Cerita'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 4.h,
          ),
          Text(
            '\t\t\t\t\tKategori yang disukai',
            style: defaultSubTextStyle.copyWith(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
            width: double.infinity,
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [BoxShadow(color: greyColor.withOpacity(0.7), blurRadius: 2, offset: Offset(0, 2))],
                border: Border.all(
                  color: greyColor2,
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gaya Hidup',
                  style: defaultSubTextStyle,
                ),
                ChipList(
                  showCheckmark: false,
                  shouldWrap: true,
                  inactiveBorderColorList: [blackColor],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  wrapAlignment: WrapAlignment.start,
                  wrapCrossAlignment: WrapCrossAlignment.center,
                  listOfChipNames: lifeStyleList,
                  activeBgColorList: [primaryColor],
                  inactiveBgColorList: [Colors.white],
                  activeTextColorList: [whiteColor],
                  inactiveTextColorList: [blackColor],
                  listOfChipIndicesCurrentlySelected: [-1],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Musik',
                  style: defaultSubTextStyle,
                ),
                ChipList(
                  showCheckmark: false,
                  shouldWrap: true,
                  inactiveBorderColorList: [blackColor],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  wrapAlignment: WrapAlignment.start,
                  wrapCrossAlignment: WrapCrossAlignment.center,
                  listOfChipNames: musicList,
                  activeBgColorList: [primaryColor],
                  inactiveBgColorList: [Colors.white],
                  activeTextColorList: [whiteColor],
                  inactiveTextColorList: [blackColor],
                  listOfChipIndicesCurrentlySelected: [-1],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Buku',
                  style: defaultSubTextStyle,
                ),
                ChipList(
                  showCheckmark: false,
                  shouldWrap: true,
                  inactiveBorderColorList: [blackColor],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  wrapAlignment: WrapAlignment.start,
                  wrapCrossAlignment: WrapCrossAlignment.center,
                  listOfChipNames: bookList,
                  activeBgColorList: [primaryColor],
                  inactiveBgColorList: [Colors.white],
                  activeTextColorList: [whiteColor],
                  inactiveTextColorList: [blackColor],
                  listOfChipIndicesCurrentlySelected: [-1],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Center(
            child: SizedBox(
              width: 80.w,
              child: ButtonWidget(
                color: primaryColor,
                title: 'Submit',
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
