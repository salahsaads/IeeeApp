
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/AppColor/appcolor.dart';

class Custom_Item extends StatelessWidget {
  Custom_Item(
      {super.key,
      required this.title,
      required this.icon,
      required this.active});
  final String title;
  bool active = false;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
            color: active ? AppColor.Color2 : AppColor.Notactive,
            size: active ? 20 : 19),
        active
            ? Text(title,
                style: GoogleFonts.prociono(
                    color: AppColor.Color1,
                    fontWeight: FontWeight.w400,
                    fontSize: 12))
            : Container()
      ],
    );
  }
}
