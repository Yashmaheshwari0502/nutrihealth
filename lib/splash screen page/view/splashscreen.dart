import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutrihealth/loading%20screen/view/loadingscreen.dart';
import 'package:nutrihealth/start%20page/view/firstpage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _showAdditionalText = false;

  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds, then show the additional text
    Timer(Duration(seconds: 2), () {
      setState(() {
        _showAdditionalText = true;
      });
    });
    // Delay for 5 seconds in total, then navigate to the NotificationScreen
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              NotificationScreen(), // Navigate to NotificationScreen
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/b9ff6435401c79ae1509643f00a5591c.png'),
            ),
            SizedBox(height: 16),
            Text(
              "Nutri health",
              style: TextStyle(
                color: Color(0xff40A06C),
                fontSize: 48,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16),
            if (_showAdditionalText)
              Text(
                "India’s top Nutritionists to consult \n you for better health every day",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
