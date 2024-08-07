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
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.grey, width: 1.0.w),
      ),
      width: MediaQuery.of(context).size.width * (.9),
      height: MediaQuery.of(context).size.width * (4 / 5),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * (1 / 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              image: DecorationImage(
                  image: NetworkImage(widget.activity!.img!),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 8.w,
              ),
              Text(
                widget.activity!.Title!,
                style: TextStyle(
                    color: AppColor.SecColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 8.w,
              ),
              Text(
                widget.activity!.Description!,
                style: TextStyle(
                  color: AppColor.SecColor,
                  fontSize: 10.sp,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
