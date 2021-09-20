import 'package:flutter/material.dart';
import 'package:testflutter/widgets/drawer.dart';
import 'package:firebase_storage/firebase_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        elevation: 5,
      ),
      body: Center(),
      drawer: const MyDrawer(),
    );
  }
}
