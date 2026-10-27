import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Acerca de"),
        backgroundColor: const Color.fromARGB(255, 17, 90, 237),
      ),
      body: const Center(
        child: Text("Pantalla Acerca de"),
      ),
    );
  }
}
  
