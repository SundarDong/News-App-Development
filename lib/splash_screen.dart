import 'package:flutter/material.dart';
import 'package:sansar/homepage_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(new Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:
       (context)=> MyHomePage(title: "US TOP HEADLINES")));
    });
    return Scaffold(
      body: Column(
        children: [
          Container(height: 100,
          ),
          Image.asset("assets/icon/icon.png"),
          Container(height: 100,
          ),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}