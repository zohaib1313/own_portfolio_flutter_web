import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/app_colors.dart';

import '../common/Method.dart';
import '../widgets/customText.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const CustomText(
              text: "0.4 What's Next?",
              textsize: 16.0,
              color: Color(0xff41FBDA),
              letterSpacing: 3.0,
            ),
            const SizedBox(
              height: 16.0,
            ),
            const CustomText(
              text: "Get In Touch",
              textsize: 42.0,
              color: Colors.white,
              letterSpacing: 3.0,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Wrap(
              children: [
                Text(
                  "My inbox is always open. Whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.4),
                    letterSpacing: 0.75,
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            InkWell(
              onTap: () {
                Method.launchEmail();
              },
              child: Card(
                elevation: 4.0,
                color: const Color(0xff64FFDA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Container(
                  margin: const EdgeInsets.all(0.85),
                  height: 80.h,
                  width: 500.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xff0A192F),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: Text(
                      "Say Hello",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff64FFDA),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        //Footer
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width - 100,
          //color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.whatsapp,
                      color: AppColor.iconsColors, size: 16),
                  const SizedBox(width: 6),
                  Text(
                    "+923062196778",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      letterSpacing: 1.75,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Designed & Built by Muhammad Zohaib 💙 Flutter",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      letterSpacing: 1.75,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 20),
                  FutureBuilder<int>(
                      future: countProducts(),
                      builder: (context, snapShot) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Total Visits: ${snapShot.data.toString()}',
                            style: AppTextStyles.textStyleBoldBodyXSmall
                                .copyWith(
                                    color: AppColor.iconsColors,
                                    letterSpacing: 2,
                                    wordSpacing: 3),
                          ),
                        );
                      }),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<int> countProducts() async {
    final CollectionReference<Map<String, dynamic>> productList =
        FirebaseFirestore.instance.collection('visits');
    AggregateQuerySnapshot query = await productList.count().get();
    debugPrint('The number of visits: ${query.count}');
    return query.count;
  }
}
