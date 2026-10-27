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
            Center(
              child: Container(
                width: 104,
                height: 104,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF026AE0), Color(0xFF3D9BFF)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF026AE0).withValues(alpha: 0.30),
                      blurRadius: 22,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.restaurant_menu,
                  size: 52,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'App Gastronómica QRoo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w800,
                color: Color(0xFF0B2A5B),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Una aplicación dedicada a la preservación y difusión de la tradición culinaria peninsular e internacional.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF5B6B82),
                height: 1.45,
              ),
            ),
            const Divider(height: 40, thickness: 1, color: Color(0xFFD6E4F7)),
            Row(
              children: [
                Container(
                  width: 4,
                  height: 22,
                  decoration: BoxDecoration(
                    color: const Color(0xFF026AE0),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Equipo de Desarrollo:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF026AE0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            ..._integrantes.map(
              (nombre) => Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF026AE0).withValues(alpha: 0.08),
                      blurRadius: 14,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 4,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  leading: Container(
                    width: 44,
                    height: 44,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFE8F1FD),
                    ),
                    child: const Icon(
                      Icons.person_outline,
                      color: Color(0xFF026AE0),
                    ),
                  ),
                  title: Text(
                    nombre,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0B2A5B),
                    ),
                  ),
                  subtitle: const Text(
                    'Desarrollador de Software',
                    style: TextStyle(color: Color(0xFF5B6B82)),
                  ),
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