import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:portfolio/common/app_colors.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import '../common/app_constants.dart';
import '../controllers/home_controller.dart';
import '../widgets/AppBarTitle.dart';
import '../widgets/customText.dart';
import '../widgets/social_widgets.dart';
import 'About.dart';

class AboutPage extends GetView<HomeController> {
  static const id = '/AboutPage';
  final scrollDirection = Axis.vertical;
  final FocusNode _focusNode = FocusNode();

  void _handleKeyEvent(RawKeyEvent event) {
    var offset =
        controller.webSmoothController.offset; //Getting current position
    if (event.logicalKey.debugName == "Arrow Down") {
      if (kReleaseMode) {
        //This block only runs when the application was compiled in release mode.
        controller.webSmoothController.animateTo(offset + 50,
            duration: Duration(milliseconds: 200), curve: Curves.ease);
      } else {
        // This will only print useful information in debug mode.
        // print(_controller.position); to get information..
        controller.webSmoothController.animateTo(offset + 50,
            duration: Duration(milliseconds: 200), curve: Curves.ease);
      }
    } else if (event.logicalKey.debugName == "Arrow Up") {
      if (kReleaseMode) {
        controller.webSmoothController.animateTo(offset - 50,
            duration: Duration(milliseconds: 200), curve: Curves.ease);
      } else {
        controller.webSmoothController.animateTo(offset - 50,
            duration: Duration(milliseconds: 200), curve: Curves.ease);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      initState: (state) {},
      builder: (_) {
        controller.isLoading.value;
        return RawKeyboardListener(
          autofocus: true,
          focusNode: _focusNode,
          onKey: _handleKeyEvent,
          child: SafeArea(
            child: Container(
              //   decoration: AppStyles.cardBoxDecoration,
              margin: const EdgeInsets.all(10),
              child: ShowUpAnimation(
                delayStart: const Duration(microseconds: 0),
                animationDuration: const Duration(milliseconds: 500),
                curve: Curves.linear,
                direction: Direction.horizontal,
                offset: 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: context.height * 0.14,
                      width: context.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Row(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.change_history,
                                  size: 32.0,
                                  color: Color(0xff64FFDA),
                                ),
                                onPressed: () {}),
                            const Spacer(),
                            Expanded(
                              child: DefaultTabController(
                                length: 4,
                                child: TabBar(
                                  indicatorColor: Colors.transparent,
                                  onTap: (index) async {
                                    //_scrollToIndex(index);
                                  },
                                  tabs: const [
                                    Tab(
                                      child: AppBarTitle(
                                        text: 'About',
                                      ),
                                    ),
                                    Tab(
                                      child: AppBarTitle(
                                        text: 'Experience',
                                      ),
                                    ),
                                    Tab(
                                      child: AppBarTitle(
                                        text: 'Project',
                                      ),
                                    ),
                                    Tab(
                                      child: AppBarTitle(
                                        text: 'Contact Us',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Card(
                                elevation: 4.0,
                                color: Color(0xff64FFDA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Container(
                                    margin: const EdgeInsets.all(0.85),
                                    height: context.height * 0.07,
                                    width: context.height * 0.20,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff0A192F),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: Text(
                                        "Resume",
                                        style: TextStyle(
                                          color: Color(0xff64FFDA),
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Flexible(child: SocialWidgets()),
                          Expanded(
                            flex: 18,
                            child: ScrollConfiguration(
                              behavior:
                                  ScrollConfiguration.of(context).copyWith(
                                dragDevices: {
                                  PointerDeviceKind.touch,
                                  PointerDeviceKind.mouse,
                                  PointerDeviceKind.stylus,
                                  PointerDeviceKind.unknown,
                                  PointerDeviceKind.invertedStylus,
                                },
                              ),
                              child: SingleChildScrollView(
                                controller: controller.webSmoothController,
                                physics: const AlwaysScrollableScrollPhysics(),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CustomText(
                                      text: "Hi, my name is",
                                      textsize: 16.0,
                                      color: Color(0xff41FBDA),
                                      letterSpacing: 3.0,
                                    ),
                                    const SizedBox(height: 6.0),
                                    const CustomText(
                                      text: "MUHAMMAD ZOHAIB",
                                      textsize: 68.0,
                                      color: Color(0xffCCD6F6),
                                      fontWeight: FontWeight.w900,
                                    ),
                                    const SizedBox(height: 4.0),
                                    Row(
                                      children: [
                                        Flexible(
                                          child: CustomText(
                                            text: "I BUILD THINGS FOR ",
                                            textsize: 56.0,
                                            color: const Color(0xffCCD6F6)
                                                .withOpacity(0.6),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: SizedBox(
                                              height: context.height * 0.09,
                                              child: DefaultTextStyle(
                                                softWrap: true,
                                                style: AppTextStyles
                                                    .textStyleBoldBodyMedium
                                                    .copyWith(
                                                  fontSize: 56.0,
                                                  color: AppColor.lightBlue,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                                child: AnimatedTextKit(
                                                  isRepeatingAnimation: true,
                                                  repeatForever: true,
                                                  animatedTexts: [
                                                    RotateAnimatedText(
                                                        'ANDROID (FLUTTER)'),
                                                    RotateAnimatedText(
                                                        'IOS (FLUTTER)'),
                                                    RotateAnimatedText(
                                                        'WEB (FLUTTER)'),
                                                    RotateAnimatedText(
                                                        'DESKTOP (FLUTTER)'),
                                                    RotateAnimatedText(
                                                        'ANDROID (NATIVE)'),
                                                    RotateAnimatedText(
                                                        'NODE EXPRESS'),
                                                  ],
                                                  onTap: () {},
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: context.height * .04),
                                    Wrap(
                                      children: [
                                        Text(
                                          AppConstants.subTitle,
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16.0,
                                            letterSpacing: 2.75,
                                            wordSpacing: 0.75,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: context.height * .12),

                                    //get in touch text
                                    InkWell(
                                      onTap: () {
                                        // method.launchEmail();
                                      },
                                      hoverColor: const Color(0xff64FFDA)
                                          .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(4.0),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: context.height * 0.09,
                                        width: context.width * 0.14,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xff64FFDA),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        child: const Text(
                                          "Get In Touch",
                                          style: TextStyle(
                                            color: Color(0xff64FFDA),
                                            letterSpacing: 2.75,
                                            wordSpacing: 1.0,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: context.height * .12),

                                    _wrapScrollTag(index: 0, child: About()),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RotatedBox(
                                quarterTurns: 45,
                                child: Text(
                                  "mianzohaibiftikhar@gmail.com",
                                  style: TextStyle(
                                    color: Colors.grey.withOpacity(0.6),
                                    letterSpacing: 3.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Container(
                                  height: 100,
                                  width: 2,
                                  color: Colors.grey.withOpacity(0.4),
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
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

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: AutoScrollController(),
      index: index,
      child: child,
    );
  }
}
