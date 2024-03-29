import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/Method.dart';
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
              text: "PROJECTS 50+",
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
                    "assets/projects/zamaKp.png",
                    "assets/projects/zamaKp0.png",
                    "assets/projects/zamaKp1.png",
                    "assets/projects/zamaKp2.png",
                    "assets/projects/zamaKp4.png",
                    "assets/projects/zamaKp5.png",
                    "assets/projects/zamaKp7.png",
                  ],
                  onTap: () {
                    Method.launchURL(
                        "https://play.google.com/store/apps/details?id=com.kpexcisetaxation.zamakp&hl=en&gl=US");
                  },
                  projectDesc:
                      """Zama KP app enables you to perform all services related to Excise, Taxation and Narcotics Control Department like:
- View vehicle registration info
- Token tax payment
- Dues and penalty payments""",
                  projectTitle: "Zama Kp (Govt. KpK)",
                  tech1: "Flutter,Dart,Biometrics"),
              FeatureProject(
                  imagePath: const [
                    "assets/projects/beatmate1.png",
                    "assets/projects/beatmate2.png",
                    "assets/projects/beatmate3.png",
                    "assets/projects/beatmate4.png",
                    "assets/projects/beatmate5.png",
                  ],
                  onTap: () {
                    Method.launchURL("https://github.com/zohaib1313/beatMate");
                  },
                  projectDesc:
                      """The Metronome by Soundbrenner works great for daily practice, live performances or in the recording studio. Highlights: • Easy to use, but powerful. • Rock-solid precision. • Change time signature & subdivision and emphasize beats by setting accents""",
                  projectTitle: "Beatmate Metronome)",
                  tech1: "Android,Kotlin,NDK,C++"),
              FeatureProject(
                  imagePath: const [
                    "assets/projects/cs.jpg",
                    "assets/projects/cs2.jpg",
                    "assets/projects/cs3.jpg",
                    "assets/projects/cs4.jpg",
                    "assets/projects/cs5.jpg",
                    "assets/projects/cs6.jpg",
                  ],
                  onTap: () {
                    Method.launchURL(
                        "https://play.google.com/store/apps/details?id=com.appseen.contacts.sharing.app&hl=en&gl=US");
                  },
                  projectDesc:
                      """Share Contacts from your old phone to your new Android phone in no time with the help of contact transfer app""",
                  projectTitle: "Contacts Sharing",
                  tech1: "Flutter,Dart,AWS Amplify,Data store"),
              FeatureProject(
                  imagePath: const [
                    "assets/projects/dd.jpeg",
                    "assets/projects/dd1.png",
                    "assets/projects/dd3.png",
                    "assets/projects/dd4.png",
                    "assets/projects/dd5.png",
                    "assets/projects/dd6.png",
                    "assets/projects/dd7.png",
                    "assets/projects/dd8.png",
                    "assets/projects/dd9.png",
                    "assets/projects/dd10.png",
                    "assets/projects/dd11.png",
                    "assets/projects/dd12.png",
                    "assets/projects/dd13.png",
                  ],
                  onTap: () {
                    /*  Method.launchURL(
                        "https://play.google.com/store/apps/details?id=com.appseen.contacts.sharing.app&hl=en&gl=US");
             */
                  },
                  projectDesc:
                      """Share Contacts from your old phone to your new Android phone in no time with the help of contact transfer app""",
                  projectTitle: "Doing Dubai",
                  tech1: "Flutter,Dart,Dio,Firebase,Paypal"),
              FeatureProject(
                  imagePath: const [
                    "assets/projects/lg.png",
                    "assets/projects/lg1.jpeg",
                    "assets/projects/lg2.jpeg",
                    "assets/projects/lg3.jpeg",
                    "assets/projects/lg4.jpeg",
                    "assets/projects/lg5.jpeg",
                    "assets/projects/lg6.jpeg",
                    "assets/projects/lg7.jpeg",
                  ],
                  onTap: () {
                    /*  Method.launchURL(
                        "https://play.google.com/store/apps/details?id=com.appseen.contacts.sharing.app&hl=en&gl=US");
             */
                  },
                  projectDesc:
                      "A Flutter application to monitor medical devices with beacons scanning and marking attendance integrated with rest api and push server",
                  projectTitle: "Logic Medical",
                  tech1: "Flutter,Dart,Dio,Paypal,Bluetooth device,Scanner"),
              FeatureProject(
                  imagePath: const [
                    "assets/projects/wa.png",
                    "assets/projects/wa1.png",
                    "assets/projects/wa2.png",
                    "assets/projects/wa3.png",
                    "assets/projects/wa4.jpeg"
                  ],
                  onTap: () {
                    /*  Method.launchURL(
                        "https://play.google.com/store/apps/details?id=com.appseen.contacts.sharing.app&hl=en&gl=US");
             */
                  },
                  projectDesc:
                      "Weather app to monitor in current location or on the route wherever you want to travel you will get weather along your route",
                  projectTitle: "Route Weather",
                  tech1: "Flutter,Dart,Dio,Open Weather, GeoLocation, Map"),
              FeatureProject(
                  imagePath: const [
                    "assets/projects/zr.png",
                    "assets/projects/zr1.png",
                    "assets/projects/zr2.png",
                    "assets/projects/zr3.png",
                    "assets/projects/zr4.png",
                    "assets/projects/zr5.png",
                    "assets/projects/zr6.png",
                    "assets/projects/zr7.png",
                    "assets/projects/zr8.png",
                    "assets/projects/zr9.png",
                    "assets/projects/zr10.png",
                  ],
                  onTap: () {
                    /*  Method.launchURL(
                        "https://play.google.com/store/apps/details?id=com.appseen.contacts.sharing.app&hl=en&gl=US");
             */
                  },
                  projectDesc:
                      "A real estate application used to sale and purchase properties and rent them out, supporting multi languages, price predictions and ML",
                  projectTitle: "Zeerac",
                  tech1: "Flutter,Dart,Dio,GeoLocation,Map"),
              FeatureProject(
                  imagePath: const [
                    "assets/projects/cf.jpeg",
                    "assets/projects/cf1.jpeg",
                    "assets/projects/cf2.jpeg",
                    "assets/projects/cf3.jpeg",
                    "assets/projects/cf4.jpeg"
                  ],
                  onTap: () {
                    /*  Method.launchURL(
                        "https://play.google.com/store/apps/details?id=com.appseen.contacts.sharing.app&hl=en&gl=US");
             */
                  },
                  projectDesc:
                      "A flutter application to provide cloud storage , like google drive with private and shared folder , where user can share documents with anyone.",
                  projectTitle: "Cloud Folder",
                  tech1: "Flutter,Dart,Rest Api,Twillio"),
              FeatureProject(
                  imagePath: const [
                    "assets/projects/lgb.jpeg",
                    "assets/projects/lgb1.jpeg",
                    "assets/projects/lgb2.jpeg",
                    "assets/projects/lgb3.jpeg",
                    "assets/projects/lgb4.jpeg",
                    "assets/projects/lgb5.jpeg",
                    "assets/projects/lgb6.jpeg",
                    "assets/projects/lgb7.jpeg",
                    "assets/projects/lgb8.jpeg",
                  ],
                  onTap: () {
                    /*  Method.launchURL(
                        "https://play.google.com/store/apps/details?id=com.appseen.contacts.sharing.app&hl=en&gl=US");
             */
                  },
                  projectDesc:
                      "Flutter multi tenant application, for travelers and drivers in Gilgit Baltistan ,Pk for booking cabs and rides. ",
                  projectTitle: "Lets Go Gb",
                  tech1: "Flutter,Dart,Firebase,Chat"),
            ],
          ),
        ),
        SizedBox(height: context.height * 0.07),
      ],
    );
  }
}
