// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:testflutter/utils/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30.0,
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/asim.jpg"),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Text(
              "Name:     Muhammad Asim Nazir",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Designation:         XML Developer",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Department:                                        IT",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Phone:                         03120649722",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Email:      asim.nazir@iwm.com.pk",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: Text("Home"),
                style: TextButton.styleFrom(minimumSize: Size(100, 50)))
          ],
        ),
      ),
      // drawer: MyDrawer(),
    );
  }
}
