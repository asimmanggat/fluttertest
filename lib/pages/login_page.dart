import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
    
        color: Colors.white,
        child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
                    height: 50.0,
                  ),
            Image.asset("assets/images/login.png", fit: BoxFit.cover),
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(hintText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(hintText: "Password"),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: const Text("Login"),
                    style: TextButton.styleFrom(
                      minimumSize: Size(100, 50)
                    ),
                  )
                ],
              ),
            )
          ],
        )
        )
    );
  }
}
