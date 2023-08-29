import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Media extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen size information
    final screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.white, // Set the background color to green
      child: CupertinoAlertDialog(
        title: Text(
          'Allow app to send you \n notifications?',
          style: TextStyle(color: Colors.white),
        ),
        content: Container(
          color: Color(0xff40A06C),
          width: screenSize.width * 0.8, // Adjust content width
          child: Column(
            children: [
              CupertinoDialogAction(
                child: Text('Allow ', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                child: Text('Deny', style: TextStyle(color: Colors.white)),
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
