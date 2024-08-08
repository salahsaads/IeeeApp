import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ieee/Features/Department/presnation/view/Department_Screen.dart';
import 'package:ieee/Features/drawer/widgets/navigation_items.dart';
import 'package:ieee/Features/drawer/widgets/social_media_icons.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF00629B),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 70),
              child: SizedBox(
                width: 100,
                child: Image.asset(
                  'assets/images/logoieee.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            NavItems(
              department: "CS",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DepartmentScreen()));
              },
            ),
            NavItems(department: 'RAS', onTap: () {}),
            NavItems(department: 'PES', onTap: () {}),
            NavItems(department: 'MUTEX', onTap: () {}),
            const Spacer(
              flex: 9,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'info@ieee-zsb.org',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Follow Us',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaIcon(iconData: FontAwesomeIcons.facebook),
                      SocialMediaIcon(iconData: FontAwesomeIcons.linkedin),
                      SocialMediaIcon(iconData: FontAwesomeIcons.instagram),
                      SocialMediaIcon(iconData: FontAwesomeIcons.twitter),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.copyright_outlined,
                        size: 15,
                        color: Colors.white,
                      ),
                      Text(
                        ' Created by CS Chapter of IEEE Du 2024',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
