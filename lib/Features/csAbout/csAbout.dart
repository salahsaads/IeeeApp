import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ieee/core/AppColor/appcolor.dart';

class csAbout extends StatefulWidget {
  const csAbout({super.key});

  @override
  State<csAbout> createState() => _csAboutState();
}

class _csAboutState extends State<csAbout> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 100.h,
      ),
      Container(
        child: Row(children: [
          SizedBox(
            width: 40.w,
          ),
          Text(
              "A legacy of over 25 years positions IEEE Zagazig\n University Student Branch (ZSB) as one of the first\n and most impactful in Egypt. We extend our reach\n beyond Zagazig University, serving students\n nationwide through workshops, events, and \ninitiatives that explore technology's influence on all\n aspects of life, from its latest applications to its \n intersection with business in our signature \"MUTEX\"\n event, the Delta region's largest gathering focused\n on technology and entrepreneurship. Our\n commitment goes beyond technical expertise,\n fostering well-rounded graduates through six\n managerial committees and three technical\n chapters, alongside the Women In Engineering\n (WIE) Affinity Group. This comprehensive approach\n creates a professional environment where students\n can cultivate essential skills like leadership,\n teamwork, and management, ensuring they're\n prepared for the demands of the modern workforce "),
        ]),
        height: 500.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: AppColor.Color2,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 0)
            ]),
      )
    ]);
  }
}
