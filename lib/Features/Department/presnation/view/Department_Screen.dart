import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/AppColor/appcolor.dart';

class DepartmentScreen extends StatefulWidget {
  const DepartmentScreen({super.key});

  @override
  State<DepartmentScreen> createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
  int indexSelecting = 0;
  List<Widget> body = [
    const Center(
      child: Text('Body1'),
    ),
    const Center(
      child: Text('Body2'),
    ),
    const Center(
      child: Text('Body3'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: AppColor.mainColor1,
        actions: [
          Container(
              width: 71,
              height: 40,
              child: const Image(
                image: AssetImage("assets/images/logoieee.png"),
                fit: BoxFit.cover,
              )),
          const SizedBox(
            width: 15,
          )
        ],
        title: Text(
          'CS',
          style: GoogleFonts.montserrat(
              color: AppColor.Color1,
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [body[indexSelecting]],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 18, left: 18),
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      AppColor.mainColor1,
                      AppColor.mainColor1,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (indexSelecting != 0) {
                          setState(() {
                            indexSelecting = 0;
                          });
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Text('Tracks',
                              style: GoogleFonts.montserrat(
                                  color: indexSelecting == 0
                                      ? AppColor.Color1
                                      : AppColor.Notactive,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14)),
                          const Spacer(),
                          indexSelecting == 0 ? const ActiveBar() : Container()
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (indexSelecting != 1) {
                          setState(() {
                            indexSelecting = 1;
                          });
                        }
                      },
                      child: Column(
                        children: [
                          const Spacer(),
                          Text('About',
                              style: GoogleFonts.montserrat(
                                  color: indexSelecting == 1
                                      ? AppColor.Color1
                                      : AppColor.Notactive,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14)),
                          const Spacer(),
                          indexSelecting == 1 ? const ActiveBar() : Container()
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (indexSelecting != 2) {
                          setState(() {
                            indexSelecting = 2;
                          });
                        }
                      },
                      child: Column(
                        children: [
                          const Spacer(),
                          Text('Team',
                              style: GoogleFonts.montserrat(
                                  color: indexSelecting == 2
                                      ? AppColor.Color1
                                      : AppColor.Notactive,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14)),
                          const Spacer(),
                          indexSelecting == 2 ? const ActiveBar() : Container()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveBar extends StatelessWidget {
  const ActiveBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 6,
      decoration: BoxDecoration(
          color: AppColor.SecColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
    );
  }
}
