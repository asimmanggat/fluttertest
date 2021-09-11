import 'package:flutter/material.dart';

void main(){
  runApp(testflutter());
}

class testflutter extends StatelessWidget {
  const testflutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
        child : Container(
          child: Text("Welcome Asim!"),
            ),
          ),
        ),
    );
  }
}
