import 'package:flutter/material.dart';
import 'package:food_order_v1/Pages/CartPage.dart';
import 'package:food_order_v1/Pages/ItemPage.dart';

import 'Pages/HomePage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food Order",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}