import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/FeatureProject.dart';
import '../widgets/customText.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomText(
              text: "03.",
              textsize: 20.0,
              color: Color(0xff61F9D5),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(width: context.width * 0.02),
            const CustomText(
              text: "PROJECTS",
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
            const Spacer(),
          ],
        ),
        SizedBox(height: context.height * 0.07),
        Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              FeatureProject(
                  imagePath: const [
                    "assets/images/bg4.png",
                    "assets/images/bg4.png",
                    "assets/images/bg4.png"
                  ],
                  onTap: () {},
                  projectDesc:
                      "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                  projectTitle: "WhatsaApp UI Clone",
                  tech1: "Flutter,Dart,Firebase"),
              FeatureProject(
                  imagePath: [
                    "assets/images/bg4.png",
                    "assets/images/bg4.png",
                    "assets/images/bg4.png"
                  ],
                  onTap: () {
                    print('on tapg');
                  },
                  projectDesc:
                      "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                  projectTitle: "WhatsaApp UI Clone",
                  tech1: "Flutter,Dart,Firebase"),
              FeatureProject(
                  imagePath: [
                    "assets/images/bg4.png",
                    "assets/images/bg4.png",
                    "assets/images/bg4.png"
                  ],
                  onTap: () {
                    print('on tapg');
                  },
                  projectDesc:
                      "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                  projectTitle: "WhatsaApp UI Clone",
                  tech1: "Flutter,Dart,Firebase"),
              FeatureProject(
                  imagePath: [
                    "assets/images/bg4.png",
                    "assets/images/bg4.png",
                    "assets/images/bg4.png"
                  ],
                  onTap: () {
                    print('on tapg');
                  },
                  projectDesc:
                      "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                  projectTitle: "WhatsaApp UI Clone",
                  tech1: "Flutter,Dart,Firebase"),
              FeatureProject(
                  imagePath: [
                    "assets/images/bg4.png",
                    "assets/images/bg4.png",
                    "assets/images/bg4.png"
                  ],
                  onTap: () {
                    print('on tapg');
                  },
                  projectDesc:
                      "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                  projectTitle: "WhatsaApp UI Clone",
                  tech1: "Flutter,Dart,Firebase"),
              FeatureProject(
                  imagePath: [
                    "assets/images/bg4.png",
                    "assets/images/bg4.png",
                    "assets/images/bg4.png"
                  ],
                  onTap: () {
                    print('on tapg');
                  },
                  projectDesc:
                      "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                  projectTitle: "WhatsaApp UI Clone",
                  tech1: "Flutter,Dart,Firebase"),
              FeatureProject(
                  imagePath: [
                    "assets/images/bg4.png",
                    "assets/images/bg4.png",
                    "assets/images/bg4.png"
                  ],
                  onTap: () {
                    print('on tapg');
                  },
                  projectDesc:
                      "A Masdfsfobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                  projectTitle: "WhatsaApp UI Clone",
                  tech1: "Flutter,Dart,Firebase"),
            ],
          ),
        ),
        SizedBox(height: context.height * 0.07),
      ],
    );
  }
}
