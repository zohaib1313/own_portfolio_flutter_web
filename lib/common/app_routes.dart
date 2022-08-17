import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:portfolio/controllers/dashboard_controller.dart';
import 'package:portfolio/pages/dashboard_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

BuildContext? myContext = navigatorKey.currentState!.context;
final List<GetPage> appRoutes = [
  ///admin
  GetPage(
      name: DashBoardPage.id,
      page: () => DashBoardPage(),
      binding: BindingsBuilder(() {
        /* Get.lazyPut<HomeController>(
                () => HomeController(),
          );*/
        Get.put(DashBoardController());
      })),
];
