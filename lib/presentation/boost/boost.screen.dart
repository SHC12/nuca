import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/boost.controller.dart';

class BoostScreen extends GetView<BoostController> {
  const BoostScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BoostScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BoostScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
