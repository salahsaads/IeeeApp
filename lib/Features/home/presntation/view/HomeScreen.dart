import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieee/Features/home/presntation/view_model/widget/home_widget.dart';
import 'package:ieee/core/AppColor/appcolor.dart';

import '../view_model/Home_model.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Our Activities",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: AppColor.SecColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ActivityWidget(
            activity: Activity(
                img: "https://i.imgur.com/x9X9xK7.png",
                Title: "Title",
                Description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Nunc enim, porttitor \n Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Nunc enim, porttitor\nLorem ipsum dolor sit amet, consectetur adipiscing\n elit. Nunc enim, porttitor"),
          ),
          SizedBox(
            height: 20,
          ),
          ActivityWidget(
            activity: Activity(
                img: "https://i.imgur.com/x9X9xK7.png",
                Title: "Title",
                Description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Nunc enim, porttitor \n Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Nunc enim, porttitor\nLorem ipsum dolor sit amet, consectetur adipiscing\n elit. Nunc enim, porttitor"),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
