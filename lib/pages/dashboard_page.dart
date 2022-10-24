import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/common/app_colors.dart';
import 'package:portfolio/controllers/dashboard_controller.dart';

import 'home_page.dart';

class DashBoardPage extends GetView<DashBoardController> {
  static const id = '/DashBoardPage';

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }

  animatedBackGround() {
    return controller.motionController != null
        ? AnimatedBuilder(
            animation: controller.motionController!,
            builder: (context, child) {
              controller.scale = 1 + controller.motionController!.value;
              return Transform.scale(
                scale: controller.scale,
                child: Container(
                  // height: DynamicSize.height(0.80, context),
                  decoration: const BoxDecoration(
                    color: AppColor.whiteColor,
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg_img.jpg'),
                      opacity: 0.9,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              );
            })
        : const IgnorePointer();
  }
}
