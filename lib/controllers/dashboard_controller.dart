import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/utils.dart';

class DashBoardController extends GetxController
    with GetTickerProviderStateMixin {
  RxBool isLoading = false.obs;

  RxInt currentIndex = 0.obs;

  PageController pageController = PageController();

  AnimationController? motionController;
  var scale;

  final Color pageBackGroundOpacity = Colors.blueGrey.withOpacity(0.7);

  @override
  void onInit() {
    motionController = AnimationController(
        duration: const Duration(seconds: 15),
        vsync: this,
        lowerBound: 0.0,
        upperBound: 0.3);
    motionController?.forward();
    motionController?.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        motionController?.reverse();
      } else if (status == AnimationStatus.dismissed) {
        motionController?.forward();
      }
    });

    super.onInit();
  }

  @override
  void dispose() {
    printWrapped("disposed called");
    motionController!.dispose();
    super.dispose();
  }

  @override
  void onClose() {
    printWrapped("close called");
    motionController!.dispose();
    super.onClose();
  }
}
