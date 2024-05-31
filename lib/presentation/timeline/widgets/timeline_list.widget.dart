import 'package:flutter/material.dart';
import 'package:nuca/presentation/timeline/widgets/timeline_item.widget.dart';
import 'package:sizer/sizer.dart';

class TimelineListWidget extends StatefulWidget {
  const TimelineListWidget({super.key});

  @override
  State<TimelineListWidget> createState() => _TimelineListWidgetState();
}

class _TimelineListWidgetState extends State<TimelineListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4.h),
      child: const Column(
        children: [
          TimelineItemWidget(
            avatar: 'assets/images/avatar_sample_2.png',
            name: 'Dewi Rahmawati',
            status:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
            time: 'Baru saja',
          ),
          TimelineItemWidget(
            avatar: 'assets/images/avatar_sample_4.png',
            name: 'Andina Kusuma',
            status: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
            time: '3 Menit lalu',
          ),
          TimelineItemWidget(
            avatar: 'assets/images/avatar_sample_5.png',
            name: 'Siska Putri',
            status: '',
            isImageOnly: true,
            time: '3 Menit lalu',
          ),
        ],
      ),
    );
  }
}
