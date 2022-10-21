import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/common/app_constants.dart';

import '../widgets/customText.dart';

class AboutMePage extends StatelessWidget {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: const Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: context.width * 0.01,
        ),
        Flexible(
          child: Text(
            text,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Color(0xff717C99),
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
              color: Color(0xff61F9D5),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(width: context.width * 0.02),
            const CustomText(
              text: "About Me",
              textsize: 26.0,
              color: Color(0xffCCD6F6),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(width: context.width * 0.02),
            Expanded(
              child: Container(
                height: 1.10,
                color: const Color(0xff303C55),
              ),
            ),
            const Spacer()
          ],
        ),
        Row(
          children: [
            ///About me
            Flexible(
              child: Column(
                children: [
                  SizedBox(height: context.height * 0.07),

                  ///About me desc
                  Wrap(
                    children: [
                      const CustomText(
                        text: AppConstants.aboutMe,
                        textsize: 16.0,
                        color: const Color(0xff828DAA),
                        letterSpacing: 0.75,
                      ),
                      const CustomText(
                        text: AppConstants.resultOriented,
                        textsize: 16.0,
                        color: Color(0xff828DAA),
                        letterSpacing: 0.75,
                      ),
                      SizedBox(height: context.height * 0.2),
                      const CustomText(
                        text:
                            "Here are a few technologies I've been working with recently:\n\n",
                        textsize: 16.0,
                        color: Color(0xff828DAA),
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
                        color: Color(0xff61F9D5),
                        child: Container(
                          margin: EdgeInsets.all(2.75),
                          height: context.height / 2,
                          width: context.width / 5,
                          color: Color(0xff0A192F),
                        ),
                      ),
                    ),
                    const CustomImageAnimation()
                  ],
                ),
              ),
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
              fit: BoxFit.cover,
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
