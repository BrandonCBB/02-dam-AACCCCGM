import 'package:flutter/material.dart';
import 'package:app_gastronomica/screens/splash_screen.dart'; // Ajusta la ruta si es necesario

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  );
}
}