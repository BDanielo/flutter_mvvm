import 'dart:convert';
import 'package:http/http.dart' as http;
import 'product.dart';

class ApiService {
  final String _baseUrl = 'https://fakestoreapi.com/products'; // URL de base de l'API

  // Méthode pour récupérer la liste des produits depuis l'API
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(_baseUrl)); // Effectue une requête GET
    if (response.statusCode == 200) {
      // Si la requête est réussie, décode les données JSON
      final List<dynamic> data = json.decode(response.body);
      // Convertit chaque élément JSON en un objet Product
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      // Lance une exception en cas d'échec de la requête
      throw Exception('Failed to load products');
    }
  }
}