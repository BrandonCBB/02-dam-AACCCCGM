import 'package:flutter/material.dart';

class FavoritosScreen extends StatelessWidget {
  const FavoritosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Favoritos'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFDCEAFC), Color(0xFFF0F6FE)],
                ),
              ),
              child: const Icon(
                Icons.favorite_border,
                size: 68,
                color: Color(0xFF5E9DEB),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Aún no tienes platillos guardados',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color(0xFF0B2A5B),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Marca tus recetas preferidas para verlas aquí.',
              style: TextStyle(color: Color(0xFF5B6B82)),
            ),
          ],
        ),
      ),
    );
  }
}