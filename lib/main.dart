import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ieee/Features/Nav/presntation/view/Nav.dart';
import 'package:ieee/Features/splash/splashscreen.dart';

import 'Features/Department/presnation/view/Department_Screen.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => IEEE(), // Wrap your app
      ),
    );

class IEEE extends StatelessWidget {
  const IEEE({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      enableScaleWH: () => false,
      enableScaleText: () => false,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      },
    );
  }
}
