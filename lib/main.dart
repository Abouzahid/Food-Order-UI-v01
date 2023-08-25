import 'package:flutter/material.dart';
import 'package:food_order_v1/Pages/CartPage.dart';
import 'package:food_order_v1/Pages/ItemPage.dart';
import 'package:food_order_v1/Pages/LoginPage.dart';
import 'package:food_order_v1/Pages/SignUpPage.dart';
import 'Pages/HomePage.dart';
import 'Pages/MyAccountPage.dart';
import 'Pages/SettingsPage.dart';



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
        "/": (context) => SignUpPage(),
        "loginPage": (context) => LoginPage(),
        "cartPage": (context) => CartPage(),
        "homePage": (context) => HomePage(),
        "itemPage": (context) => ItemPage(),
        "myAccountPage": (context) => MyAccountPage(),
        "settingsPage": (context) => SettingsPage(),
      },
    );
  }
}