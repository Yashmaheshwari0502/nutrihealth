import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nutri Health"),
      ),
      body: Center(
        child: Text("Welcome to Nutri Health!"),
      ),
    );
  }
}
