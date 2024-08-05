import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieee/core/AppColor/appcolor.dart';

import 'widget/Nav_Widget.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
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
                  Color(0xff002235)
                ],
              ),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(0,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: Custom_Item(
                    title: 'Home',
                    icon: (Icons.home),
                    active: _currentIndex == 0 ? true : false,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: Custom_Item(
                    title: 'About',
                    icon: Icons.info_outline,
                    active: _currentIndex == 1 ? true : false,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(2,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: Custom_Item(
                    title: 'Team',
                    icon: Icons.group,
                    active: _currentIndex == 2 ? true : false,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          changeStateNavBar(index);
        },
        children: [
          Center(child: Text('Screen1')),
          Center(child: Text('Screen2')),
          Center(child: Text('Screen3'))
        ],
      ),
    );
  }

  void changeStateNavBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
