
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/AppColor/appcolor.dart';

class AboutItem1 extends StatelessWidget {
  const AboutItem1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColor.Color2, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(0, 1),
            blurRadius: 10,
            spreadRadius: 2)
      ]),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 19, left: 28, bottom: 19, right: 10),
        child: Text(
          " A legacy of over 25 years positions IEEE Zagazig University Student Branch (ZSB) as one of the first and most impactful in Egypt. We extend our reach beyond Zagazig University, serving students nationwide through workshops, events, and initiatives that explore technology's influence on all aspects of life, from its latest applications to its intersection with business in our signature \"MUTEX\" event, the Delta region's largest gathering focused on technology and entrepreneurship. Our commitment goes beyond technical expertise, fostering well-rounded graduates through six managerial committees and three technical chapters, alongside the Women In Engineering (WIE) Affinity Group. This comprehensive approach creates a professional environment where students can cultivate essential skills like leadership, teamwork, and management, ensuring they're prepared for the demands of the modern workforce.",
          maxLines: null,
          overflow: TextOverflow.visible,
          style: GoogleFonts.roboto(
              textStyle:
                  TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}