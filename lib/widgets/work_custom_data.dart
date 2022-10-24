import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_text/styled_text.dart';

import '../common/app_colors.dart';

class WorkCustomData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String jobTitle;
  final String duration;

  const WorkCustomData(
      {required this.title,
      required this.jobTitle,
      required this.subTitle,
      required this.duration});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            color: AppColor.whiteColor.withOpacity(0.6),
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          children: [
            Text(
              jobTitle,
              style: TextStyle(
                fontSize: 12,
                color: AppColor.whiteColor.withOpacity(0.5),
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Text(
              duration,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12.0,
                color: AppColor.whiteColor.withOpacity(0.5),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6.0,
        ),
        Flexible(
          child: StyledText(
            text: subTitle,
            overflow: TextOverflow.visible,
            newLineAsBreaks: true,
            style: TextStyle(
              fontSize: 13.0,
              color: AppColor.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
