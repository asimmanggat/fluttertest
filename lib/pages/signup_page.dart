import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/utils/routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
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
                      height: 20.0,
                    ),
                    Image.asset("assets/images/logo.png", fit: BoxFit.cover),
                    const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration:
                                const InputDecoration(hintText: "Username"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Username Required";
                              } else if (value.length < 3) {
                                return "Username should be min. 5 characters";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration:
                                const InputDecoration(hintText: "Password"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password Required";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Confirm Password"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password Required";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 50.0,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Register",
                              textScaleFactor: 1.2,
                            ),
                            style: TextButton.styleFrom(
                              minimumSize: Size(500, 50),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
