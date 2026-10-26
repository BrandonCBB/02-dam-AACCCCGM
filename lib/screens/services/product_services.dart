
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:app_gastronomica/models/receta.dart';

class RecipeService {
  static const String _baseUrl = 'https://dummyjson.com/recipes';

  Future<List<Receta>> obtenerRecetas() async {
    final Uri url = Uri.parse(_baseUrl);
    final respuesta = await http.get(url);

    if (respuesta.statusCode == 200) {
      final Map<String, dynamic> datos = jsonDecode(respuesta.body);
      final List<dynamic> listaRecetas = datos['recipes'];

      return listaRecetas.map((json) => Receta.fromJson(json)).toList();
    } else {
      throw Exception(
        'Ha ocurrido un error al obtener las recetas: ${respuesta.statusCode}',
      );
    }
  }
}