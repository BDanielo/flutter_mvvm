import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_view_model.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  void initState() {
    super.initState();
    // Récupère les produits lorsque l'écran est initialisé
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProductViewModel>(context, listen: false).fetchProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barre d'application avec le titre "Products"
      appBar: AppBar(title: const Text('Products')),
      body: Consumer<ProductViewModel>(
        builder: (context, viewModel, child) {
          // Affiche un indicateur de chargement si les données sont en cours de récupération
          if (viewModel.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          // Affiche un message si aucun produit n'est disponible
          if (viewModel.products.isEmpty) {
            return const Center(child: Text('No products available.'));
          }
          // Affiche la liste des produits
          return ListView.builder(
            itemCount: viewModel.products.length,
            itemBuilder: (context, index) {
              final product = viewModel.products[index];
              return ListTile(
                // Affiche l'image du produit
                leading: Image.network(product.image, width: 50, height: 50),
                // Affiche le titre du produit
                title: Text(product.title),
                // Affiche le prix du produit
                subtitle: Text('\$${product.price}'),
                // Navigue vers l'écran des détails du produit lors d'un clic
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen(product: product),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}