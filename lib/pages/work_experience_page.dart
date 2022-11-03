import 'package:another_stepper/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/common/app_colors.dart';

import '../widgets/customText.dart';
import '../widgets/work_custom_data.dart';

class WorkExperiencePage extends StatelessWidget {
  WorkExperiencePage({Key? key}) : super(key: key);

  List<StepperData> stepperData = [
    StepperData(
      title: "WEB",
      subtitle: "HTML/CSS/PHP",
    ),
    StepperData(
      title: ".NET",
      subtitle: "C#",
    ),
    StepperData(
      title: "ANDROID",
      subtitle: "java/kotlin",
    ),
    StepperData(
      title: "FLUTTER",
      subtitle: "dart",
    ),
    StepperData(
      title: "NODE EXPRESS",
      subtitle: "java script",
    ),
    StepperData(
      title: "REACT JS",
      subtitle: "java script",
    ),
    StepperData(
      title: "IOS",
      subtitle: "swift",
    ),
  ];

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
              text: "02.",
              textsize: 20.0,
              color: Color(0xff61F9D5),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(width: context.width * 0.02),
            const CustomText(
              text: "WORK EXPERIENCE",
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
        // SizedBox(height: context.height * 0.07),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            WorkCustomData(
              title: "EVAMP & SAANGA (Islamabad,Pk)",
              jobTitle: 'Flutter Developer',
              duration: "January 2021 - Present",
              subTitle:
                  '''● Developing high scale flutter applications supporting Android/IOS/Web.
● Leading the team of 5 flutter developers.
● Advised on interface design improvements and coordinating on development with other team members.
● Wrote elegant, easy to read and adapt for others well documented code.
● Received troubleshooting tasks and identify the underlying cause using diagnosis tools and test procedures.
● Reviewed existing code and program architecture to evaluate and report on maintainability and scalability
recommending changes to current architecture and mimicking of effective structure.
● Kept current on latest trends, conventions and best practice standards for app development implementation
through meetings and video conferencing.
● Applied native code to flutter application for various functions support.
● Instructed junior developers about latest and best practice of coding and implementations.
● Contributed in clients’ meetings for achieving best results in requirements gathering.
''',
            ),
            WorkCustomData(
              title: "GLIMPES TECHNOLOGIES (Islamabad,Pk)",
              jobTitle: 'Mobile applicaiton developer',
              duration: "June 2019 - May 2020",
              subTitle: '''● Worked with professional team of 20+ developers.
● Involved in entire software development process for the project. Requirements, Specifications, Design,
Implementation and Testing.
● Used Flutter Getx & Provider to handle interaction between UI and Business Logics.
● Integrated Amazon Web Services Like Cognito , S3, Appsync, PinPoint into the application.
● Researched and selected Apis for integration into development of the applications.
● Applied Agile methodology to evaluate final products and streamline development efforts.
● Provided dedicated support and timely issues resolution to client following successful app launch.
● Applied various techniques to locate bugs and errors in the applications.
● Managed development milestones from initial steps through final delivery.''',
            ),
            WorkCustomData(
              title: "CENTER OF ADVANCE SOLUTIONS (Bahwalpur,Pk)",
              jobTitle: 'Android developer',
              duration: "Feb 2017 - June 2019",
              subTitle:
                  '''● Worked as native android application developer using Java, Kotlin.
● Developed Project Management tools in native.
● Worked with native NDK, C++ libraries.
● Integrating apps with third-party libraries.
● Creating an architectural skeleton for future projects
● Developed Android application first with SQLite before shifting to Firebase.
● Implemented features like Image Compression, Location Services, User Authentication, Instant Messaging, and open source APIs
● Design and integrate UI/UX mobile design to backend code''',
            ),
            WorkCustomData(
              title: "FIVERR",
              jobTitle: 'Mobile application developer',
              duration: "2019- present",
              subTitle:
                  '''● Fiverr level one seller\n● Have developed 20+ projects\n●	5-star ratings\n●	5-star reviews''',
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 1.10,
                color: const Color(0xff303C55),
              ),
            ),
            SizedBox(width: context.width * 0.02),
            const CustomText(
              text: "JOURNEY",
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
          ],
        ),
        Wrap(children: [
          AnotherStepper(
            stepperList: stepperData,
            titleTextStyle: AppTextStyles.textStyleBoldBodySmall
                .copyWith(color: AppColor.lightBlue, fontSize: (18.5).sp),
            subtitleTextStyle: AppTextStyles.textStyleNormalBodyXSmall
                .copyWith(color: AppColor.whiteColor, fontSize: (17.5).sp),
            stepperDirection: Axis.horizontal,
            activeBarColor: AppColor.lightBlue,
            horizontalStepperHeight: 100,
            inverted: false,
            activeIndex: 4,
            barThickness: 8,
          ),
        ]),
        SizedBox(height: context.height * 0.07),
      ],
    );
  }
}
