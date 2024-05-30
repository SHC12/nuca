import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuca/infrastructure/theme/colors.dart';
import 'package:nuca/presentation/chat/chat_menu.screen.dart';
import 'package:nuca/presentation/home/home.screen.dart';
import 'package:nuca/presentation/match/match.screen.dart';
import 'package:nuca/presentation/match/swipe.screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:sizer/sizer.dart';

class NavbarBottomScreen extends StatefulWidget {
  const NavbarBottomScreen({super.key});

  @override
  State<NavbarBottomScreen> createState() => _NavbarBottomScreenState();
}

class _NavbarBottomScreenState extends State<NavbarBottomScreen> {
  PersistentTabController? _controller;
  bool? _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() => [
        const HomeScreen(),
        const HomeScreen(),
        const HomeScreen(),
        const ChatMenuScreen(),
        const HomeScreen(),
      ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
            inactiveIcon: const ImageIcon(AssetImage('assets/images/navbar_icons/home_icon_inactive.png')),
            icon: const ImageIcon(AssetImage('assets/images/navbar_icons/home_icon.png')),
            activeColorPrimary: primaryColor,
            inactiveColorPrimary: primaryColor),
        PersistentBottomNavBarItem(
            inactiveIcon: const ImageIcon(AssetImage('assets/images/navbar_icons/match_icon_inactive.png')),
            icon: const ImageIcon(
              AssetImage('assets/images/navbar_icons/match_icon.png'),
            ),
            activeColorPrimary: primaryColor,
            inactiveColorPrimary: primaryColor),
        PersistentBottomNavBarItem(
            inactiveIcon: const ImageIcon(AssetImage('assets/images/navbar_icons/search_icon_inactive.png')),
            icon: const ImageIcon(AssetImage('assets/images/navbar_icons/search_icon_inactive.png')),
            activeColorPrimary: primaryColor,
            inactiveColorPrimary: primaryColor),
        PersistentBottomNavBarItem(
            inactiveIcon: const ImageIcon(AssetImage('assets/images/navbar_icons/chat_icon_inactive.png')),
            icon: const ImageIcon(AssetImage('assets/images/navbar_icons/chat_icon.png')),
            activeColorPrimary: primaryColor,
            inactiveColorPrimary: primaryColor),
        PersistentBottomNavBarItem(
            inactiveIcon: const ImageIcon(AssetImage('assets/images/navbar_icons/profile_icon_inactive.png')),
            icon: const ImageIcon(AssetImage('assets/images/navbar_icons/profile_icon.png')),
            activeColorPrimary: primaryColor,
            inactiveColorPrimary: primaryColor),
      ];

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: PersistentTabView(
          onItemSelected: (final index) {
            // setState(() {
            //   _hideNavBar = true;
            // });
            if (index == 1) {
              Get.to(() => SwipeScreen());
              // _controller = PersistentTabController(initialIndex: 0);
            }
            // }
            // contro
          },
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          resizeToAvoidBottomInset: true,
          padding: NavBarPadding.symmetric(vertical: 1.h),
          navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : 8.h,
          bottomScreenMargin: 0,
          selectedTabScreenContext: (final context) {},
          backgroundColor: whiteColor,
          hideNavigationBar: _hideNavBar,
          decoration: const NavBarDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              colorBehindNavBar: Colors.indigo),
          itemAnimationProperties: const ItemAnimationProperties(
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
          ),
          navBarStyle: NavBarStyle.style6,
        ),
      );
}
