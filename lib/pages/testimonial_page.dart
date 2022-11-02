import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/customText.dart';

class TestimonialPage extends StatelessWidget {
  TestimonialPage({Key? key}) : super(key: key);

  var scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              text: "TESTIMONIALS",
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
        SizedBox(height: context.height * 0.07),
        SizedBox(
          height: 200,
          child: Scrollbar(
            thumbVisibility: true,
            trackVisibility: true,
            controller: scrollController,
            child: ListView(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(width: 50.w),
                Image.asset('assets/projects/fiv.PNG', height: 200),
                SizedBox(width: 50.w),
                Image.asset('assets/projects/tst1.PNG', height: 200),
                SizedBox(width: 50.w),
                Image.asset('assets/projects/tst.PNG', height: 200),
                SizedBox(width: 50.w),
                Image.asset('assets/projects/tst2.PNG', height: 200),
                SizedBox(width: 50.w),
                Image.asset('assets/projects/tst3.PNG', height: 200),
                SizedBox(width: 50.w),
                Image.asset('assets/projects/tst4.PNG', height: 200),
                SizedBox(width: 50.w),
              ],
            ),
          ),
        ),
        SizedBox(height: context.height * 0.07),
      ],
    );
  }
}
