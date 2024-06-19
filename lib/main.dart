import 'package:flutter/material.dart';
import 'package:Gacoans/CartPage.dart';
import 'package:Gacoans/HomePage.dart';
import 'package:Gacoans/LoginPage.dart';
import 'package:Gacoans/RegisterPage.dart';
import 'package:Gacoans/paymentPage.dart';
import 'package:Gacoans/successPage.dart';
import 'package:Gacoans/welcomeScreen.dart';
import 'package:provider/provider.dart';

import 'service/providers/cart_providers.dart';



void main() {
 runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MyApp(),
    ),
  );
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
        '/' :  (context) => const WelcomeScreen(),      
        '/registerPage' :  (context) => const RegisterPage(),
        '/loginPage' :  (context) => const LoginPage(),
        '/homePage' :  (context) => HomePage(),
        '/cartPage': (context) => const CartPage(),
        // 'productPage' :  (context) => const ItemPage(),
        // 'suitPage' :  (context) => const SuitPage(),
        // 'gacoanPage' :  (context) => const GacoanPage(),
        // 'hompimpahPage' :  (context) => const HompimpahPage(),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
