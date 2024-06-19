import 'package:flutter/material.dart';

// import 'package:gacoan/loginscreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0x66c66264),
              Color(0x99c66264),
              Color(0xccc66264),
              Color(0xffc66264),
            ]
          )
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 200.0),
              child: Image(image: AssetImage('assets/logo.png')),
            ),
            const SizedBox(height: 70,
            ),
            const Text("Welcome Back", style: TextStyle(
              fontSize: 30,
              color: Colors.black
            ) ,),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/loginPage');
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black)
                ),
                child: const Center(
                  child: 
                  Text('Sign In',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),),
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/registerPage');
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  color: const Color(0xffc66264),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black)
                ),
                child: const Center(
                  child: 
                  Text('Sign Up',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),),
              ),
            ),


          ],
        ),
      ),
    );
  }
}