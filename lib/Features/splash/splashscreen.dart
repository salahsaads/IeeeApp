// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ieee/Features/Nav/presntation/view/Nav.dart';
import 'package:ieee/core/AppColor/appcolor.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Nav()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor1,
      body: Center(
        child: Container(
          width: 150,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/logoieee.png",
                  ),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
