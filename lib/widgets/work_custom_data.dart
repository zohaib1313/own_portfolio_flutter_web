import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

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
          style: const TextStyle(
            fontSize: 22.0,
            color: Color(0xffCCD6F6),
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          children: [
            Flexible(
              child: Text(
                jobTitle,
                style: TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xffCCD6F6).withOpacity(0.5),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Flexible(
              child: Text(
                duration,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xffCCD6F6).withOpacity(0.5),
                  fontWeight: FontWeight.w700,
                ),
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
            softWrap: true,
            newLineAsBreaks: true,
            style: TextStyle(
              fontSize: 13.0,
              color: const Color(0xffCCD6F6).withOpacity(0.5),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
