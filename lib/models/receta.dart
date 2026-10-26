class Receta {
  final int id;
  final String name;
  final String image;
  final String difficulty;

  Receta({
    required this.id,
    required this.name,
    required this.image,
    required this.difficulty,
  });

  factory Receta.fromJson(Map<String, dynamic> json) {
    return Receta(
      id: json['id'],
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      difficulty: json['difficulty'] ?? 'Fácil',
    );
  }
}