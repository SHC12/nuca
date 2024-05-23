import 'package:flutter/material.dart';

import 'package:nuca/presentation/home/widgets/header.widget.dart';
import 'package:nuca/presentation/home/widgets/people_list.widget.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
      child: const SingleChildScrollView(
        child: Column(
          children: [HeaderWidget(), PeopleListWidget()],
        ),
      ),
    ));
  }
}
