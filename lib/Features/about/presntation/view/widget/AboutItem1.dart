import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/AppColor/appcolor.dart';

class AboutItem2 extends StatelessWidget {
  const AboutItem2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 383,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColor.Color2,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Container(
              height: 167.53,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Image(
                      image: AssetImage("assets/images/vision 1.png"))),
            ),
            Text(
              "Our Vision",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 18,
                      color: AppColor.SecColor,
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              width: double.infinity,
              height: 133,
              child: Padding(
                padding: const EdgeInsets.all(21),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitorLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitorLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor",
                  maxLines: null,
                  overflow: TextOverflow.visible,
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: 15,
                    color: AppColor.Textcolor,
                    fontWeight: FontWeight.w400,
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
