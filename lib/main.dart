import 'package:flutter/material.dart';
import 'package:nutrihealth/loading%20screen/view/loadingscreen.dart';
import 'package:nutrihealth/location%20page/view/locationpage.dart';
import 'package:nutrihealth/media%20page/view/media.dart';
import 'package:nutrihealth/splash%20screen%20page/view/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: SplashScreen(),
        //home: Location(),
        //home: Media(),
        home: SplashScreen());
  }
}
