import 'package:flutter/material.dart';
import 'package:testflutter/home_page.dart';

void main(){
  runApp(testflutter());
}

class testflutter extends StatelessWidget {
  const testflutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: HomePage(),
    );
  }
}
