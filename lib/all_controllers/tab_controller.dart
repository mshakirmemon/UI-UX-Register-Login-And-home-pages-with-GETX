import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerTab extends GetxController with SingleGetTickerProviderMixin {
  final List<Tab> myTabs = const <Tab>[
    Tab(
      text: 'LOGIN',
    ),
    Tab(text: 'REGISTER'),
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();

    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();

    super.onClose();
  }
}
