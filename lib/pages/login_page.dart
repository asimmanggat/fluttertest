// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

final _formKey = GlobalKey<FormState>();

moveToHome(BuildContext context){
  if(_formKey.currentState!.validate()){
    Navigator.pushNamed(context, MyRoutes.homeRoute);
  }
  
}

  @override
  Widget build(BuildContext context) {
    return Material(

        color: Colors.white,
        child: SingleChildScrollView(
        child: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(
                    height: 30.0,
                  ),
            Image.asset("assets/images/login.png", fit: BoxFit.cover),
            const SizedBox(
                    height: 30.0,
                  ),
            Text(
              "Welcome",
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
                    validator: (value){
                      if(value!.isEmpty){
                        return "Username Required";
                      }else if(value.length < 3){
                        return "Username should be min. 5 characters";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(hintText: "Password"),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Password Required";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      moveToHome(context);
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
        )
    );
  }
}
