// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoppingcart/quiz.dart'; // Assuming your main quiz screen file is named quiz.dart

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToQuizScreen();
  }

  void _navigateToQuizScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Quiz()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 18, 20, 21), // Customize the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your app logo or splash screen image here
            Image.asset(
              'images/logobag.png',
              width: 150,
            ),
            SizedBox(
              height: 25,
            ),
            CircularProgressIndicator(
              color: const Color.fromARGB(255, 150, 123, 26),
            ), // Add a loading indicator
            // SizedBox(height: 20),
            // Text(
            //   'Welcome',
            //   style: TextStyle(color: Colors.white, fontSize: 20),
            // ),
          ],
        ),
      ),
    );
  }
}
