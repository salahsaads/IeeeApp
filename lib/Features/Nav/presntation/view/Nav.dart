import 'package:flutter/material.dart';
import 'package:ieee/Features/about/presntation/view/aboutScreen.dart';
import 'package:ieee/Features/drawer/custom_drawer.dart';
import 'package:ieee/Features/home/presntation/view/HomeScreen.dart';
import 'package:ieee/core/AppColor/appcolor.dart';
import 'package:ieee/Features/team/team_screen.dart';

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
      backgroundColor: AppColor.Color1,
      appBar: AppBar(
        backgroundColor: AppColor.mainColor1,
        title: Container(
            width: 71,
            height: 40,
            child: const Image(
              image: AssetImage("assets/images/logoieee.png"),
              fit: BoxFit.cover,
            )),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Container(
                width: 36,
                height: 36,
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 45,
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const CustomDrawer(),
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
                  const Color(0xff002235)
                ],
              ),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: CustomItem(
                    title: 'Home',
                    icon: (Icons.home),
                    active: _currentIndex == 0 ? true : false,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: CustomItem(
                    title: 'About',
                    icon: Icons.info_outline,
                    active: _currentIndex == 1 ? true : false,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: CustomItem(
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
          const Homescreen(),
          const AboutScreen(),
          TeamScreen(
            title_add: true,
          )
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
