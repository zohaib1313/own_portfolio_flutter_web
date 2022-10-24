import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:portfolio/common/Method.dart';
import 'package:portfolio/common/app_colors.dart';
import 'package:portfolio/pages/get_in_touch.dart';
import 'package:portfolio/pages/my_projects.dart';
import 'package:portfolio/pages/work_experience_page.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../common/app_constants.dart';
import '../controllers/home_controller.dart';
import '../widgets/AppBarTitle.dart';
import '../widgets/customText.dart';
import '../widgets/social_widgets.dart';
import 'About.dart';

class HomePage extends GetView<HomeController> {
  static const id = '/HomePage';
  final scrollDirection = Axis.vertical;
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      initState: (state) {},
      builder: (_) {
        controller.isLoading.value;
        return Scaffold(
          backgroundColor: AppColor.primaryColor,
          drawer: Container(
            width: context.width * 0.6,
            color: AppColor.primaryColor,
            margin: const EdgeInsets.symmetric(vertical: 30),
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Builder(builder: (context) {
              return ListView(children: [
                InkWell(
                  onTap: () {
                    Method.launchURL(
                        'https://drive.google.com/file/d/1q45UImfAvgDSlKAyhJOHpx9NkaKPrVI3/view?usp=sharing');
                    Scaffold.of(context).closeDrawer();
                  },
                  child: Card(
                    color: AppColor.greenColor,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: CustomText(
                                text: 'Resume',
                                textsize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primaryColor),
                          ),
                          FaIcon(
                            FontAwesomeIcons.download,
                            color: AppColor.primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Method.launchURL('https://github.com/zohaib1313');
                    Scaffold.of(context).closeDrawer();
                  },
                  child: Card(
                    color: AppColor.greenColor,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: CustomText(
                                text: 'Github',
                                textsize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primaryColor),
                          ),
                          FaIcon(
                            FontAwesomeIcons.github,
                            color: AppColor.primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Method.launchURL('https://www.fiverr.com/zohaib_778');
                    Scaffold.of(context).closeDrawer();
                  },
                  child: Card(
                    color: AppColor.greenColor,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: CustomText(
                                text: 'Fiverr',
                                textsize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primaryColor),
                          ),
                          FaIcon(
                            FontAwesomeIcons.five,
                            color: AppColor.primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Method.launchURL('https://www.linkedin.com/in/zohaib1313/');
                    Scaffold.of(context).closeDrawer();
                  },
                  child: Card(
                    color: AppColor.greenColor,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: CustomText(
                                text: 'LinkedIn',
                                textsize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primaryColor),
                          ),
                          FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: AppColor.primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Method.launchEmail();
                    Scaffold.of(context).closeDrawer();
                  },
                  child: Card(
                    color: AppColor.greenColor,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: CustomText(
                                text: 'Email',
                                textsize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primaryColor),
                          ),
                          FaIcon(
                            FontAwesomeIcons.mailchimp,
                            color: AppColor.primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Method.launchCaller();
                    Scaffold.of(context).closeDrawer();
                  },
                  child: Card(
                    color: AppColor.greenColor,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: CustomText(
                                text: 'Phone : +923062196778',
                                textsize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primaryColor),
                          ),
                          FaIcon(
                            FontAwesomeIcons.phone,
                            color: AppColor.primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]);
            }),
          ),
          body: Builder(builder: (context) {
            return RawKeyboardListener(
              autofocus: true,
              focusNode: _focusNode,
              onKey: controller.handleKeyEvent,
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
                        if (context.width > 720)
                          SizedBox(
                            height: context.height * 0.14,
                            width: context.width,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: const Icon(
                                        Icons.change_history,
                                        size: 26,
                                        color: AppColor.lightBlue,
                                      ),
                                      onPressed: () {
                                        controller.scrollrToIndex(index: -1);
                                      }),
                                  Expanded(
                                      child: Row(
                                    children: [
                                      Expanded(
                                        child: AppBarTitle(
                                          text: 'About',
                                          onTap: () {
                                            controller.scrollrToIndex(index: 0);
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: AppBarTitle(
                                          text: 'Experience',
                                          onTap: () {
                                            controller.scrollrToIndex(index: 1);
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: AppBarTitle(
                                          text: 'Projects',
                                          onTap: () {
                                            controller.scrollrToIndex(index: 2);
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: AppBarTitle(
                                          text: 'Contact',
                                          onTap: () {
                                            controller.scrollrToIndex(index: 3);
                                          },
                                        ),
                                      ),
                                    ],
                                  )),

                                  ///resume....
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: InkWell(
                                      onTap: () {
                                        Method.launchURL(
                                            'https://drive.google.com/file/d/1q45UImfAvgDSlKAyhJOHpx9NkaKPrVI3/view?usp=sharing');
                                      },
                                      child: Card(
                                        elevation: 4.0,
                                        color: AppColor.lightBlue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        child: Container(
                                            margin: const EdgeInsets.all(0.85),
                                            height: context.height * 0.07,
                                            width: context.height * 0.20,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: const Color(0xff0A192F),
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 8.0,
                                              ),
                                              child: Text(
                                                "Resume",
                                                style: TextStyle(
                                                  color: AppColor.lightBlue,
                                                ),
                                              ),
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        Expanded(
                          child: Row(
                            children: [
                              if (context.width > 720)
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
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        (context.width > 720)
                                            ? const SizedBox(height: 6.0)
                                            : Column(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      Scaffold.of(context)
                                                          .openDrawer();
                                                    },
                                                    child: SizedBox(
                                                      height: 100.h,
                                                      child: const Icon(
                                                        Icons.menu,
                                                        color:
                                                            AppColor.lightBlue,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 16.0)
                                                ],
                                              ),
                                        _wrapScrollTag(
                                          index: -1,
                                          child: const CustomText(
                                            text: "Hi, my name is",
                                            textsize: 16.0,
                                            color: AppColor.lightBlue,
                                            letterSpacing: 3.0,
                                          ),
                                        ),
                                        const SizedBox(height: 6.0),
                                        CustomText(
                                          text: "MUHAMMAD ZOHAIB",
                                          textsize: 130.r,
                                          color: AppColor.whiteColor,
                                          fontWeight: FontWeight.w900,
                                        ),
                                        const SizedBox(height: 4.0),
                                        (context.width > 720)
                                            ? Row(
                                                children: [
                                                  Flexible(
                                                    child: CustomText(
                                                      text:
                                                          "I BUILD THINGS FOR ",
                                                      textsize: 80.sp,
                                                      color: AppColor.whiteColor
                                                          .withOpacity(0.6),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      height:
                                                          context.height * 0.09,
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: DefaultTextStyle(
                                                        softWrap: true,
                                                        style: AppTextStyles
                                                            .textStyleBoldBodyMedium
                                                            .copyWith(
                                                          fontSize: 50.sp,
                                                          color: AppColor
                                                              .lightBlue,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                        child: AnimatedTextKit(
                                                          isRepeatingAnimation:
                                                              true,
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
                                                ],
                                              )
                                            : Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: "I BUILD THINGS FOR ",
                                                    textsize: 130.r,
                                                    color:
                                                        const Color(0xffCCD6F6)
                                                            .withOpacity(0.6),
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  Container(
                                                    height:
                                                        context.height * 0.09,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: DefaultTextStyle(
                                                      softWrap: true,
                                                      style: AppTextStyles
                                                          .textStyleBoldBodyMedium
                                                          .copyWith(
                                                        fontSize: 30,
                                                        color:
                                                            AppColor.lightBlue,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                      child: AnimatedTextKit(
                                                        isRepeatingAnimation:
                                                            true,
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
                                                ],
                                              ),
                                        SizedBox(height: context.height * .04),
                                        Wrap(
                                          children: [
                                            Text(
                                              AppConstants.subTitle,
                                              style: TextStyle(
                                                color: AppColor.grey,
                                                fontSize: 16.0,
                                                letterSpacing: 2.75,
                                                wordSpacing: 0.75,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: context.height * .10),

                                        //get in touch text
                                        InkWell(
                                          onTap: () {
                                            Method.launchEmail();
                                          },
                                          hoverColor: const Color(0xff64FFDA)
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 80.h,
                                            width: 530.w,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: AppColor.lightBlue,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                            child: const Text(
                                              "Get In Touch",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: AppColor.lightBlue,
                                                letterSpacing: 1.75,
                                                wordSpacing: 1.0,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(height: context.height * .12),

                                        _wrapScrollTag(
                                            index: 0,
                                            child: const AboutMePage()),
                                        SizedBox(height: context.height * .12),

                                        _wrapScrollTag(
                                            index: 1,
                                            child: const WorkExperiencePage()),
                                        _wrapScrollTag(
                                            index: 2,
                                            child: const MyProjects()),
                                        _wrapScrollTag(
                                          index: 3,
                                          child: const GetInTouch(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (context.width > 720)
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
                                        color: const Color(0xffCCD6F6)
                                            .withOpacity(0.5),
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
          }),
        );
      },
    );
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: controller.webSmoothController,
      index: index,
      child: child,
    );
  }
}
