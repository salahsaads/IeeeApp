
import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    super.key, required this.iconData,
  });
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: (){
          //حط هنا بقا الصفحة بتاعتهم 
        },
        child: Icon(
          iconData,
          color: Colors.white,
          size: 24,
        ),
      ),
      
    );
  }
}
