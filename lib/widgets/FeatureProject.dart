import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'customText.dart';

class FeatureProject extends StatelessWidget {
  final List<String> imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech1;

  final dynamic onTap;
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  FeatureProject(
      {super.key,
      required this.imagePath,
      required this.onTap,
      required this.projectDesc,
      required this.projectTitle,
      required this.tech1});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        cardKey.currentState?.controller?.forward();
      },
      onExit: (e) {
        cardKey.currentState?.controller?.reverse();
      },
      child: Container(

          ///web
          margin: const EdgeInsets.all(30),
          height: context.height * 0.30,
          width: context.width * 0.20,
          child: FlipCard(
            fill: Fill.fillBack,
            key: cardKey,
            direction: FlipDirection.VERTICAL,
            front: CarouselSlider(
                items: imagePath
                    .map((e) => Image.asset(
                        height: context.height * 0.30,
                        width: context.width * 0.20,
                        fit: BoxFit.fill,
                        e))
                    .toList(),
                options: CarouselOptions(
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(
                      milliseconds: Random().nextInt(6000 - 2000) + 2000),
                  autoPlayAnimationDuration: Duration(
                      milliseconds: Random().nextInt(1000 - 300) + 200),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: false,
                  scrollDirection: Axis.horizontal,
                )),
            back: Container(
              color: Colors.indigo.withOpacity(0.5),
              padding: const EdgeInsets.all(6),
              child: Column(
                children: [
                  Flexible(
                    child: CustomText(
                      text: projectTitle,
                      textsize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.75,
                    ),
                  ),
                  Flexible(
                    child: CustomText(
                      text: projectDesc,
                      textsize: 14,
                      color: Colors.white70,
                    ),
                  ),
                  Wrap(
                    children: [
                      for (String s in tech1.split(','))
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: CustomText(
                            text: s,
                            textsize: 14,
                            color: Colors.lime,
                          ),
                        )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github),
                      color: Colors.white.withOpacity(0.3),
                      onPressed: onTap,
                    ),
                  )
                ],
              ),
            ),
          )),
    );

    //   Container(
    //   height: size.height / 0.999,
    //   width: size.width - 100,
    //   //color: Colors.tealAccent,
    //   child: Column(
    //     children: [
    //       Container(
    //         height: size.height - 100,
    //         width: size.width - 84,
    //         child: Stack(
    //           children: [
    //             //Image
    //             Positioned(
    //               top: size.height * 0.02,
    //               left: 20.0,
    //               child: Container(
    //                 height: size.height * 0.60,
    //                 width: size.width * 0.5,
    //                 //color: Colors.redAccent,
    //                 child: Image(
    //                   fit: BoxFit.cover,
    //                   image: AssetImage(imagePath),
    //                 ),
    //               ),
    //             ),
    //
    //             // Short Desc
    //             Positioned(
    //               top: size.height / 6,
    //               right: 10.0,
    //               child: Container(
    //                 alignment: Alignment.center,
    //                 height: size.height * 0.18,
    //                 width: size.width * 0.35,
    //                 color: Color(0xff172A45),
    //                 child: Wrap(
    //                   alignment: WrapAlignment.center,
    //                   children: [
    //                     Padding(
    //                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
    //                       child: CustomText(
    //                         text: projectDesc,
    //                         textsize: 16.0,
    //                         color: Colors.white.withOpacity(0.4),
    //                         letterSpacing: 0.75,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //
    //             // Project Tiitle
    //             Positioned(
    //               top: 16.0,
    //               right: 10.0,
    //               child: Container(
    //                 height: size.height * 0.10,
    //                 width: size.width * 0.25,
    //                 //color: Colors.indigo,
    //                 child: Wrap(
    //                   // mainAxisAlignment: MainAxisAlignment.end,
    //                   alignment: WrapAlignment.end,
    //                   children: [
    //                     CustomText(
    //                       text: projectTitle,
    //                       textsize: 27,
    //                       color: Colors.grey,
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 1.75,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //
    //             // Project Resources
    //             Positioned(
    //               top: size.height * 0.36,
    //               right: 10.0,
    //               child: Container(
    //                 height: size.height * 0.08,
    //                 width: size.width * 0.25,
    //                 // color: Colors.indigo,
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.end,
    //                   children: [
    //                     CustomText(
    //                       text: tech1 == null ? "" : tech1,
    //                       textsize: 14,
    //                       color: Colors.grey,
    //                       letterSpacing: 1.75,
    //                     ),
    //                     const SizedBox(
    //                       width: 16.0,
    //                     ),
    //                     CustomText(
    //                       text: tech2 ?? "",
    //                       textsize: 14,
    //                       color: Colors.grey,
    //                       letterSpacing: 1.75,
    //                     ),
    //                     SizedBox(
    //                       width: 16.0,
    //                     ),
    //                     CustomText(
    //                       text: tech3 ?? "",
    //                       textsize: 14,
    //                       color: Colors.grey,
    //                       letterSpacing: 1.75,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //
    //             // Gitub Link
    //             Positioned(
    //               top: size.height * 0.42,
    //               right: 10.0,
    //               child: Container(
    //                 height: size.height * 0.08,
    //                 width: size.width * 0.25,
    //                 // color: Colors.indigo,
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.end,
    //                   children: [
    //                     IconButton(
    //                       icon: FaIcon(FontAwesomeIcons.github),
    //                       color: Colors.white.withOpacity(0.3),
    //                       onPressed: onTap,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
