import 'package:flutter/material.dart';
import 'product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  // Constructeur pour initialiser l'écran avec un produit spécifique
  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barre d'application avec le titre du produit
      appBar: AppBar(title: Text(product.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Affiche l'image du produit au centre
            Center(
              child: Image.network(product.image, height: 200),
            ),
            const SizedBox(height: 16), // Espacement vertical
            // Affiche le titre du produit
            Text(product.title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8), // Espacement vertical
            // Affiche le prix du produit
            Text('\$${product.price}', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 16), // Espacement vertical
            // Titre pour la description
            const Text('Description:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8), // Espacement vertical
            // Affiche la description du produit
            Text(product.description),
          ],
        ),
      ),
    );
  }
}