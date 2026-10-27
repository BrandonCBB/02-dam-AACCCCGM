import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  final List<String> _integrantes = const [
    'Campos Buendia Brandon',
    'Arguelles Canul Valeria Sofía',
    'Acevedo Chim Moises Iván',
    'May Garrido Julian Abraham',
    'Chong González Ronald Alexis',
    'García Alegría Didier Alberto',
    'Chamorro Mendoza Christian Maurizzio',
    'Castro García José Juan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            const Icon(
              Icons.restaurant_menu,
              size: 70,
              color: Colors.blue,
            ),
            const SizedBox(height: 12),
            const Text(
              'App Gastronómica QRoo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Una aplicación dedicada a la preservación y difusión de la tradición culinaria peninsular e internacional.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const Divider(height: 40, thickness: 1),
            const Text(
              'Equipo de Desarrollo:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 12),
            ..._integrantes.map(
              (nombre) => Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                elevation: 1.5,
                child: ListTile(
                  leading: const Icon(
                    Icons.person_outline,
                    color: Colors.blue,
                  ),
                  title: Text(
                    nombre,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: const Text('Desarrollador de Software'),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}