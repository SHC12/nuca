// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/filter/widgets/age_preferred.widget.dart';
import 'package:nuca/presentation/filter/widgets/date_with.widget.dart';
import 'package:nuca/presentation/filter/widgets/favorite_category.widget.dart';
import 'package:nuca/presentation/filter/widgets/location.widget.dart';
import 'package:sizer/sizer.dart';

import 'controllers/filter.controller.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var groupValueInterested;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text('Filter Your Match', style: defaultBoldTextStyle),
            ),
            DateWithWidget(),
            AgePreferredWidget(),
            LocationWidget(),
            FavoriteCategoryWidget()
          ],
        ),
      ),
    ));
  }
}
