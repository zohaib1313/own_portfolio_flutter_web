import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxBool isLoading = false.obs;
  late AnimationController scaleAnimationController;

  ScrollController webSmoothController = ScrollController();

  @override
  void onInit() {
    scaleAnimationController = AnimationController(
        vsync: this,
        upperBound: 0.95,
        lowerBound: 0.90,
        duration: const Duration(seconds: 3))
      ..forward()
      ..repeat(reverse: true);
    super.onInit();
  }
}
