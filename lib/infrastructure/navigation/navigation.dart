import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.SHARED,
      page: () => const SharedScreen(),
      binding: SharedControllerBinding(),
    ),
    GetPage(
      name: Routes.REGISTRATION,
      page: () => RegistrationScreen(),
      binding: RegistrationControllerBinding(),
    ),
    GetPage(
      name: Routes.PROGRESS,
      page: () => ProgressScreen(),
      binding: ProgressControllerBinding(),
    ),
    GetPage(
      name: Routes.FILTER,
      page: () => const FilterScreen(),
      binding: FilterControllerBinding(),
    ),
    GetPage(
      name: Routes.BOOST,
      page: () => const BoostScreen(),
      binding: BoostControllerBinding(),
    ),
    GetPage(
      name: Routes.OTP,
      page: () => OtpScreen(),
      binding: OtpControllerBinding(),
    ),
    GetPage(
      name: Routes.QUIZ,
      page: () => QuizScreen(),
      binding: QuizControllerBinding(),
    ),
    GetPage(
      name: Routes.CALL,
      page: () => const CallScreen(),
      binding: CallControllerBinding(),
    ),
    GetPage(
      name: Routes.MATCH,
      page: () => const MatchScreen(),
      binding: MatchControllerBinding(),
    ),
    GetPage(
      name: Routes.CHAT,
      page: () => const ChatScreen(),
      binding: ChatControllerBinding(),
    ),
    GetPage(
      name: Routes.TIMELINE,
      page: () => const TimelineScreen(),
      binding: TimelineControllerBinding(),
    ),
  ];
}
