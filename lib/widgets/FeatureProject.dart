import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/common/app_colors.dart';

class FeatureProject extends StatelessWidget {
  final List<String> imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech1;

  final dynamic onTap;
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

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
          color: Colors.black12.withAlpha(100),
          width:
              context.width > 720 ? context.width * 0.2 : context.width * 0.5,
          child: FlipCard(
            fill: Fill.fillBack,
            key: cardKey,
            direction: FlipDirection.VERTICAL,
            front: Stack(
              alignment: Alignment.center,
              children: [
                CarouselSlider(
                    items: imagePath
                        .map((e) => Image.asset(
                            height: context.height * 0.30,
                            width: context.width,
                            //fit: BoxFit.fill,
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
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
                Container(
                  color: Colors.black12.withAlpha(5),
                  child: Text(
                    projectTitle,
                    style: AppTextStyles.textStyleBoldTitleLarge
                        .copyWith(color: Colors.white70),
                  ),
                ),
              ],
            ),
            back: Container(
              //  color: Colors.indigo.withOpacity(0.5),
              padding: const EdgeInsets.all(6),
              child: Column(
                children: [
                  Text(
                    projectTitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: AppTextStyles.textStyleBoldBodyXSmall
                        .copyWith(fontSize: 18, color: Colors.white70),
                  ),
                  Expanded(
                    child: Text(
                      projectDesc,
                      style: AppTextStyles.textStyleNormalBodyXSmall
                          .copyWith(fontSize: 12, color: Colors.white70),
                    ),
                  ),
                  Wrap(
                    children: [
                      for (String s in tech1.split(','))
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text(
                            s,
                            style:
                                AppTextStyles.textStyleBoldBodyXSmall.copyWith(
                              fontSize: context.height * 0.02,
                              color: Colors.lime,
                            ),
                          ),
                        )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.github,
                          size: context.height * 0.04),
                      color: Colors.white.withOpacity(0.3),
                      onPressed: onTap,
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
