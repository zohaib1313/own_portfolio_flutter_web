import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/common/app_colors.dart';
import 'package:portfolio/common/app_constants.dart';

import '../widgets/customText.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: AppColor.lightBlue.withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: context.width * 0.01,
        ),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: AppColor.grey,
              letterSpacing: 1.75,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///About me title
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomText(
              text: "01.",
              textsize: 20.0,
              color: AppColor.lightBlue,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(width: context.width * 0.02),
            const CustomText(
              text: "About Me",
              textsize: 26.0,
              color: AppColor.whiteColor,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(width: context.width * 0.02),
            Expanded(
              child: Container(
                height: 1.10,
                color: AppColor.darkBlue,
              ),
            ),
            const Spacer()
          ],
        ),
        (context.width > 720)
            ? Row(
                children: [
                  ///About me
                  Flexible(
                    child: Column(
                      children: [
                        SizedBox(height: context.height * 0.07),

                        ///About me desc
                        Wrap(
                          children: [
                            CustomText(
                              text: AppConstants.aboutMe,
                              textsize: 16.0,
                              color: AppColor.grey,
                              letterSpacing: 0.75,
                            ),
                            CustomText(
                              text: AppConstants.resultOriented,
                              textsize: 16.0,
                              color: AppColor.grey,
                              letterSpacing: 0.75,
                            ),
                            SizedBox(height: context.height * 0.2),
                            CustomText(
                              text:
                                  "Here are a few technologies I've been working with recently:\n\n",
                              textsize: 16.0,
                              color: AppColor.grey,
                              // fontWeight: FontWeight.w500,
                              letterSpacing: 0.75,
                            ),
                          ],
                        ),

                        ///technologies.....
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  technology(context, "Dart"),
                                  technology(context, "Java"),
                                  technology(context, "Kotlin"),
                                  technology(context, "Java Script"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  technology(context, "Agora"),
                                  technology(context, "Google Maps"),
                                  technology(context, "Firebase"),
                                  technology(context, "Rest Apis"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  ///Profile Image
                  Flexible(
                    child: SizedBox(
                      height: context.height / 1.5,
                      width: context.width / 2 - 100,
                      // color: Colors.white,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: context.height * 0.12,
                            left: context.width * 0.120,
                            child: Card(
                              color: AppColor.lightBlue,
                              child: Container(
                                margin: EdgeInsets.all(2.75),
                                height: context.height / 2,
                                width: context.width / 5,
                                color: AppColor.primaryColor,
                              ),
                            ),
                          ),
                          const CustomImageAnimation()
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  ///Profile Image
                  SizedBox(height: context.height * 0.07),
                  SizedBox(
                      width: 2000.w,
                      height: 300.h,
                      child: Image.asset(
                        'assets/images/bg4.png',
                        fit: BoxFit.fill,
                      )),
                  SizedBox(height: context.height * 0.07),

                  ///About me desc
                  Wrap(
                    children: [
                      CustomText(
                        text: AppConstants.aboutMe,
                        textsize: 16.0,
                        color: AppColor.grey,
                        letterSpacing: 0.75,
                      ),
                      CustomText(
                        text: AppConstants.resultOriented,
                        textsize: 16.0,
                        color: AppColor.grey,
                        letterSpacing: 0.75,
                      ),
                      SizedBox(height: context.height * 0.2),
                      CustomText(
                        text:
                            "Here are a few technologies I've been working with recently:\n\n",
                        textsize: 16.0,
                        color: AppColor.grey,
                        // fontWeight: FontWeight.w500,
                        letterSpacing: 0.75,
                      ),
                    ],
                  ),

                  ///technologies.....
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            technology(context, "Dart"),
                            technology(context, "Java"),
                            technology(context, "Kotlin"),
                            technology(context, "Java Script"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            technology(context, "Agora"),
                            technology(context, "Google Maps"),
                            technology(context, "Firebase"),
                            technology(context, "Rest Apis"),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
      ],
    );
  }
}

class CustomImageAnimation extends StatefulWidget {
  const CustomImageAnimation({super.key});

  @override
  _CustomImageAnimationState createState() => _CustomImageAnimationState();
}

class _CustomImageAnimationState extends State<CustomImageAnimation> {
  Color customImageColor = Color(0xff61F9D5).withOpacity(0.5);

  // ignore: unused_field
  int _enterCounter = 0;

  // ignore: unused_field
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      customImageColor = Color(0xff61F9D5).withOpacity(0.5);
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      customImageColor = Colors.transparent;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: Stack(
        children: [
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: Colors.black54,
            child: const Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/bg4.png'),
            ),
          ),
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: customImageColor,
          ),
        ],
      ),
    );
  }
}
