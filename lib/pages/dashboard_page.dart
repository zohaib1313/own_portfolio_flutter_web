import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/common/app_colors.dart';
import 'package:portfolio/controllers/dashboard_controller.dart';

class DashBoardPage extends GetView<DashBoardController> {
  static const id = '/DashBoardPage';

  @override
  Widget build(BuildContext context) {
    return GetX<DashBoardController>(
      initState: (_) {},
      builder: (logic) {
        controller.isLoading.value;
        return Stack(
          children: [
            animatedBackGround(),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                margin: EdgeInsets.only(top: 40.r, left: 20.r, right: 20.r),
                child: Column(
                  children: [
                    ///top bar
                    Container(
                      margin: EdgeInsets.only(
                          top: 20.r, left: 20.r, right: 20.r, bottom: 10.r),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.r),
                        child: BottomNavyBar(
                          curve: Curves.decelerate,
                          backgroundColor: AppColor.primaryColor,
                          showElevation: true,
                          selectedIndex: controller.currentIndex.value,
                          onItemSelected: (index) {
                            controller.currentIndex.value = index;
                            controller.pageController.jumpToPage(index);
                          },
                          items: <BottomNavyBarItem>[
                            _getNavBarItem(title: 'Home', icon: Icons.home),
                            _getNavBarItem(
                                title: 'Skills',
                                icon: Icons.work_history_outlined),
                            _getNavBarItem(
                                title: 'Experience',
                                icon: Icons.data_usage_rounded),
                            _getNavBarItem(
                                title: 'Contact', icon: Icons.contact_mail),
                          ],
                        ),
                      ),
                    ),

                    ///page view
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PageView(
                          controller: controller.pageController,
                          onPageChanged: (index) {
                            controller.currentIndex.value = index;
                          },
                          children: <Widget>[
                            Container(
                              color: controller.pageBackGroundOpacity,
                            ),
                            Container(
                              color: controller.pageBackGroundOpacity,
                            ),
                            Container(
                              color: controller.pageBackGroundOpacity,
                            ),
                            Container(
                              color: controller.pageBackGroundOpacity,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _getNavBarItem({required String title, required IconData icon}) {
    return BottomNavyBarItem(
      activeColor: AppColor.blackColor,
      inactiveColor: AppColor.grey,
      title: Text(
        title,
        style: AppTextStyles.textStyleBoldBodyMedium,
      ),
      icon: Icon(
        icon,
      ),
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
