import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Asim";
  final double pi = 3.14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterTest App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days App by $name the value of PI is $pi"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
