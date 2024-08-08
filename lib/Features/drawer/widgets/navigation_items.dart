// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';

class NavItems extends StatelessWidget {
  const NavItems({Key? key, required this.department, required this.onTap})
      : super(key: key);
  final String department;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
        // ظبط دي بردو
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 3),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.white54),
          ),
        ),
        child: Center(
          child: Text(
            department,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
