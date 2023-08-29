import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen size information
    final screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.white, // Set the background color to white
      child: CupertinoAlertDialog(
        title: Text('Allow app to access \n your location?',
            style: TextStyle(color: Colors.white)),
        content: Container(
          width: screenSize.width * 0.8, // Adjust content width
          color: Color(0xff40A06C), // Set the background color to green
          child: Column(
            children: [
              CupertinoDialogAction(
                child: Text('Allow', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                child: Text('Allow While Using App',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                child:
                    Text("Don't Allow", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
