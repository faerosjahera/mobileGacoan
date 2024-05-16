import 'package:flutter/material.dart';
import 'package:gacoan/CartPage.dart';
import 'package:gacoan/HomePage.dart';
import 'package:gacoan/ItemPage.dart';
import 'package:gacoan/LoginPage.dart';
import 'package:gacoan/RegisterPage.dart';
import 'package:gacoan/menu/gacoan.dart';
import 'package:gacoan/menu/hompimpah.dart';
import 'package:gacoan/menu/suit.dart';
import 'package:gacoan/welcomeScreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gacoans Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F3),
      ),
      routes: {
        '/' :  (context) =>  WelcomeScreen(),
        'registerPage' :  (context) => const RegisterPage(),
        'loginPage' :  (context) => const LoginPage(),
        'homePage' :  (context) => HomePage(),
        'cartPage' :  (context) => const CartPage(),
        'itemPage' :  (context) => const ItemPage(),
        'suitPage' :  (context) => const SuitPage(),
        'gacoanPage' :  (context) => const GacoanPage(),
        'hompimpahPage' :  (context) => const HompimpahPage(),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
