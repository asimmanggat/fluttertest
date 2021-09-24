import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testflutter/pages/home_page.dart';
import 'package:testflutter/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:testflutter/widgets/theme.dart';
import 'pages/login_page.dart';
import 'pages/profile_main.dart';
import 'pages/signup_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const testflutter());
}

// ignore: camel_case_types
class testflutter extends StatelessWidget {
  const testflutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.greenTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.signupRoute: (context) => const SignUpPage(),
        MyRoutes.profileRoute: (context) => const ProfilePage(),
      },
    );
  }
}
