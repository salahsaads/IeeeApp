import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ieee/Features/home/presntation/view_model/Home_model.dart';
import 'package:ieee/core/AppColor/appcolor.dart';

class ActivityWidget extends StatefulWidget {
  Activity? activity;
  ActivityWidget({super.key, required this.activity});

  @override
  State<ActivityWidget> createState() => _ActivityWidgetState();
}

class _ActivityWidgetState extends State<ActivityWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.Color2,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: Offset(0, 5),
                blurRadius: 10,
                spreadRadius: 0)
          ]),
      width: MediaQuery.of(context).size.width * (.9),
      height: MediaQuery.of(context).size.width * (4 / 5),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * (1 / 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              image: DecorationImage(
                  image: NetworkImage(widget.activity!.img!),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Text(
                widget.activity!.Title!,
                style: TextStyle(
                    color: AppColor.SecColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Text(
                widget.activity!.Description!,
                style: TextStyle(
                  color: AppColor.SecColor,
                  fontSize: 10,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
