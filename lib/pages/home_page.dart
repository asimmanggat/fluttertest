// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testflutter/models/products.dart';
import 'package:testflutter/widgets/drawer.dart';
import 'package:testflutter/widgets/products_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: ListView.builder(
          itemCount: ProductsModel.products.length,
          itemBuilder: (context, index) {
            return ProductsWidget(
              product: ProductsModel.products[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
