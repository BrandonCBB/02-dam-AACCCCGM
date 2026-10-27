import 'package:flutter/material.dart';
import '../models/receta.dart';

class RecipeCard extends StatelessWidget {
  final Receta receta;

  const RecipeCard({super.key, required this.receta});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            child: receta.image.isNotEmpty
                ? Image.network(
                    receta.image,
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  )
                : Container(
                    width: 110,
                    height: 110,
                    color: Colors.grey[300],
                    child: const Icon(Icons.fastfood, size: 40, color: Colors.grey),
                  ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    receta.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.bar_chart, size: 16, color: Colors.deepOrange),
                      const SizedBox(width: 4),
                      Text(
                        'Dificultad: ${receta.difficulty}',
                        style: TextStyle(color: Colors.grey[700], fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}