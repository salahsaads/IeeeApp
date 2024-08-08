import 'package:flutter/material.dart';
import 'package:ieee/Features/about/presntation/view/widget/AboutItem1.dart';
import 'package:ieee/Features/about/presntation/view/widget/AboutItem2.dart';
import 'package:ieee/Features/about/presntation/view/widget/Title.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [CustomTitle(title: "About US",), AboutItem1(), AboutItem2()],
    );
  }
}
