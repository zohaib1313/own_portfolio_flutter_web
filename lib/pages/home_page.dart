import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:portfolio/common/app_colors.dart';

import '../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);
  static const id = '/HomePage';

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      initState: (state) {},
      builder: (_) {
        controller.isLoading.value;
        return Container(
          decoration: AppStyles.cardBoxDecoration,
          margin: const EdgeInsets.all(10),
        );
      },
    );
  }
}
