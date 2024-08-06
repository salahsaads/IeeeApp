
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/AppColor/appcolor.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("About US",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: AppColor.SecColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
