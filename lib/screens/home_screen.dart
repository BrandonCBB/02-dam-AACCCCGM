import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gastronomía QRoo'),
        backgroundColor: const Color.fromARGB(208, 21, 79, 237),
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: const Color.fromARGB(255, 231, 237, 251),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Platillos Ancestrales de Quintana Roo',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 14, 60, 226),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Explora la rica herencia culinaria maya y del Caribe peninsular combinada con las mejores recetas.',
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            ),
          ),
          
          const Expanded(
            child: Center(
              child: Text('Lista de recetas'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 8, 67, 245),
        child: const Icon(Icons.map, color: Colors.white),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Ubicación de platillos en el mapa'),
              duration: Duration(seconds: 2),
            ),
          );
        },
      ),
    );
  }
}