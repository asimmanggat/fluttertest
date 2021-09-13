import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Asim";
  final double pi = 3.14;

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FlutterTest App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days App by $name the value of PI is $pi"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
