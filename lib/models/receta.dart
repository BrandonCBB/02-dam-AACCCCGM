class Receta {
  final int id;
  final String name;
  final String image;
  final List<dynamic> ingredients;
  final List<dynamic> instructions;

  Receta({
    required this.id,
    required this.name,
    required this.image,
    required this.ingredients,
    required this.instructions,
  });

  factory Receta.fromJson(Map<String, dynamic> json) {
    return Receta(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      ingredients: json['ingredients'] ?? [],
      instructions: json['instructions'] ?? [],
    );
  }
}