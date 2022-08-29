import 'dart:math';
import 'dart:ui';

import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:portfolio/common/app_colors.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../common/spaces_boxes.dart';
import '../controllers/home_controller.dart';

class AboutPage extends GetView<HomeController> {
  static const id = '/AboutPage';

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      initState: (state) {},
      builder: (_) {
        controller.isLoading.value;
        return Container(
          decoration: AppStyles.cardBoxDecoration,
          margin: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ShowUpAnimation(
              delayStart: const Duration(microseconds: 0),
              animationDuration: const Duration(milliseconds: 500),
              curve: Curves.linear,
              direction: Direction.horizontal,
              offset: 0.3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'JOHN DOE',
                            style: AppTextStyles.textStyleBoldTitleLarge
                                .copyWith(
                                    color: AppColor.whiteColor,
                                    fontSize: 80.sp),
                          ),
                        ),
                        hSpace,
                        ScaleTransition(
                          scale: CurvedAnimation(
                              curve: Curves.easeIn,
                              reverseCurve: Curves.easeInOut,
                              parent: controller.scaleAnimationController),
                          child: CircleAvatar(
                            radius: 100,
                            backgroundImage: Image.asset(
                              'assets/images/worker.jpg',
                              width: 200,
                              height: 300,
                              fit: BoxFit.fill,
                            ).image,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
