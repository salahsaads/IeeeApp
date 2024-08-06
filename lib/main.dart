import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:ieee/Features/Nav/presntation/view/Nav.dart';
import 'package:ieee/Features/splash/splashscreen.dart';

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
    return MaterialApp(home: SplashScreen());
  }
}
