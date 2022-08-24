import 'dart:ui';

import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:portfolio/common/app_colors.dart';

import '../controllers/home_controller.dart';

class AboutPage extends GetView<HomeController> {
  const AboutPage({Key? key}) : super(key: key);
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropShadowImage(
                  offset: const Offset(4.0, 20),
                  scale: 1,
                  blurRadius: 12,
                  borderRadius: 20,
                  image: Image.asset(
                    'assets/images/worker.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
