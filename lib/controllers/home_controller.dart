import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxBool isLoading = false.obs;
  late AnimationController scaleAnimationController;

  AutoScrollController webSmoothController = AutoScrollController();

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

  void handleKeyEvent(RawKeyEvent event) {
    var offset = webSmoothController.offset; //Getting current position
    if (event.logicalKey.debugName == "Arrow Down") {
      if (kReleaseMode) {
        //This block only runs when the application was compiled in release mode.
        webSmoothController.animateTo(offset + 50,
            duration: Duration(milliseconds: 200), curve: Curves.ease);
      } else {
        // This will only print useful information in debug mode.
        // print(_controller.position); to get information..
        webSmoothController.animateTo(offset + 50,
            duration: Duration(milliseconds: 200), curve: Curves.ease);
      }
    } else if (event.logicalKey.debugName == "Arrow Up") {
      if (kReleaseMode) {
        webSmoothController.animateTo(offset - 50,
            duration: Duration(milliseconds: 200), curve: Curves.ease);
      } else {
        webSmoothController.animateTo(offset - 50,
            duration: Duration(milliseconds: 200), curve: Curves.ease);
      }
    }
  }

  void scrollrToIndex({required int index}) {
    webSmoothController.scrollToIndex(index,
        duration: const Duration(seconds: 2),
        preferPosition: AutoScrollPosition.begin);
  }
}
