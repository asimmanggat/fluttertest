import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testflutter/pages/home_page.dart';

import 'login_page.dart';

void main() {
  runApp(const testflutter());
}

// ignore: camel_case_types
class testflutter extends StatelessWidget {
  const testflutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
