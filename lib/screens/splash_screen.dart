import 'dart:async';
import 'package:app_gastronomica/screens/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{

  SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.restaurant, color: Colors.white, size:90),
          SizedBox(height: 0),
          Text("App Gastronomica Delfines", 
          style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20),
          CircularProgressIndicator(color: Colors.white),
          
        ],
        ),
    ),
    );
  }
}