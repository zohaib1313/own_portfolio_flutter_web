import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/common/app_colors.dart';
import 'package:portfolio/controllers/dashboard_controller.dart';
import 'package:portfolio/pages/home_page.dart';

import '../common/spaces_boxes.dart';
import 'about_page.dart';

class DashBoardPage extends GetView<DashBoardController> {
  static const id = '/DashBoardPage';

  @override
  Widget build(BuildContext context) {
    return GetX<DashBoardController>(
      initState: (_) {},
      builder: (logic) {
        controller.currentIndex.value;
        return Scaffold(
          body: Stack(
            children: [
              animatedBackGround(),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView(
                    controller: controller.pageController,
                    scrollDirection: Axis.vertical,
                    onPageChanged: (index) {
                      controller.currentIndex.value = index;
                    },
                    children: <Widget>[
                      const AboutPage(),
                      Container(
                        color: Colors.green,
                      ),
                      HomePage(),
                      HomePage(),
                      Container(
                        color: Colors.green,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 125.r, vertical: 100.r),
                    child: BottomNavigationBar(
                      enableFeedback: true,
                      elevation: 16,
                      unselectedItemColor: AppColor.grey,
                      selectedItemColor: AppColor.whiteColor,
                      backgroundColor: Colors.black,
                      type: BottomNavigationBarType.fixed,
                      currentIndex: controller.currentIndex.value,
                      onTap: (value) {
                        controller.currentIndex.value = value;
                        controller.pageController
                            .jumpToPage(controller.currentIndex.value);
                      },
                      // Fixed// <-- T
                      items: const <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'About',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'Education Skills',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'Experience',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'Projects',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'Contact',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
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
                      image: AssetImage('assets/images/bg4.png'),
                      opacity: 0.9,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            })
        : const IgnorePointer();
  }
}
