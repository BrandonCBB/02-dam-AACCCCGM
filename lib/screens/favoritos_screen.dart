import 'package:flutter/material.dart';

class FavoritosScreen extends StatelessWidget {
  const FavoritosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favoritos"),
        backgroundColor: const Color.fromARGB(255, 17, 90, 237),
      ),
      body: const Center(
        child: Text("Pantalla de Favoritos"),
      ),
    );
  }
}