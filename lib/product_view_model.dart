import 'package:flutter/material.dart';
import 'api_service.dart';
import 'product.dart';

class ProductViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService(); // Instance du service API
  List<Product> _products = []; // Liste des produits
  bool _loading = false; // Indicateur de chargement

  // Getter pour accéder à la liste des produits
  List<Product> get products => _products;

  // Getter pour vérifier si les données sont en cours de chargement
  bool get loading => _loading;

  // Définit l'état de chargement et notifie les écouteurs
  void setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  // Méthode pour récupérer les produits depuis l'API
  Future<void> fetchProducts() async {
    setLoading(true); // Active l'indicateur de chargement
    try {
      _products = await _apiService.fetchProducts(); // Récupère les produits
    } catch (e) {
      // Gère les erreurs (par exemple, afficher un message d'erreur)
    } finally {
      setLoading(false); // Désactive l'indicateur de chargement
    }
  }
}