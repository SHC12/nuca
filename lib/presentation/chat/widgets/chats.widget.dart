import 'package:flutter/material.dart';
import 'package:nuca/infrastructure/theme/fonts.dart';
import 'package:nuca/presentation/chat/widgets/chats_item.widget.dart';
import 'package:sizer/sizer.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Chats', style: defaultTextStyle),
        SizedBox(
          height: 2.h,
        ),
        const ChatsItemWidget(
          avatar: 'assets/images/avatar_sample_2.png',
          lastMessage: 'Hai Ganteng',
          name: 'Dewi Rahmawati',
          time: 'Baru',
        ),
        const ChatsItemWidget(
          avatar: 'assets/images/avatar_sample_4.png',
          lastMessage: 'Salam kenal ya, tinggal dimana',
          name: 'Andina Kusuma',
          time: 'Baru',
        ),
        const ChatsItemWidget(
          avatar: 'assets/images/avatar_sample_5.png',
          lastMessage: 'haiii, deket nih, keluar yuk',
          name: 'Cendana anatasia',
          time: '2 menit lalu',
        ),
      ],
    );
  }
}
