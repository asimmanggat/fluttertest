import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/utils/routes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      Fluttertoast.showToast(
          msg: "you're logged In",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
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
                      "Welcome",
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
                            height: 50.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              moveToHome(context);
                            },
                            child: const Text(
                              "Login",
                              textScaleFactor: 1.2,
                            ),
                            style: TextButton.styleFrom(
                                minimumSize: Size(500, 50)),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, MyRoutes.signupRoute);
                            },
                            child: const Text(
                              "Signup",
                              textScaleFactor: 1.2,
                            ),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(500, 50),
                              onPrimary: Colors.green,
                              primary: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
