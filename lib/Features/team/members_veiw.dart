

import 'package:flutter/material.dart';

class MembersVeiw extends StatelessWidget {
  const MembersVeiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
                        decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              image: const DecorationImage(
                image:  AssetImage('assets/images/person.png'),
                fit: BoxFit.cover, // Covers the entire container
              ),
            ),
          ),
          const Text(
            "Abdullah Hussein",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff002855),
              shadows: [
                Shadow(
                  offset: Offset(3.0, 3.0),
                  blurRadius: 6.0,
                  color: Color.fromARGB(106, 27, 27, 27),
                ),
              ],
            ),
          ),
    
          const Text(
            "Chairman",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(237, 1, 50, 106),
              
              
            ),
          ),
    const SizedBox(height: 8,)
        ],
      ),
    );
  }
}
