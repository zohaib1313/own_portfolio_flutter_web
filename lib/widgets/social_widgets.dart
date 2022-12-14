import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../common/Method.dart';
import '../common/app_colors.dart';

class SocialWidgets extends StatelessWidget {
  const SocialWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.09,
      height: context.height - 82,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              icon: const FaIcon(FontAwesomeIcons.github),
              color: AppColor.iconsColors,
              iconSize: 16.0,
              onPressed: () {
                Method.launchURL('https://github.com/zohaib1313');
              }),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.linkedin),
            color: AppColor.iconsColors,
            onPressed: () {
              Method.launchURL('https://www.linkedin.com/in/zohaib1313/');
            },
            iconSize: 16.0,
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.freebsd),
            color: AppColor.iconsColors,
            onPressed: () {
              Method.launchURL('https://www.fiverr.com/zohaib_778');
            },
            iconSize: 16.0,
          ),
          IconButton(
              icon: const Icon(Icons.call),
              color: AppColor.iconsColors,
              iconSize: 16.0,
              onPressed: () {
                Method.launchCaller();
              }),
          IconButton(
              icon: const Icon(Icons.mail),
              color: AppColor.iconsColors,
              iconSize: 16.0,
              onPressed: () {
                Method.launchEmail();
              }),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              height: context.height * 0.20,
              width: 2,
              color: Colors.grey.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
