import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_view_model.dart';
import 'product_list_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // Fournit une instance de ProductViewModel à l'ensemble de l'application
        ChangeNotifierProvider(create: (_) => ProductViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Titre de l'application
      title: 'Flutter MVVM Demo',
      // Thème principal de l'application
      theme: ThemeData(primarySwatch: Colors.blue),
      // Écran d'accueil de l'application
      home: ProductListScreen(),
    );
  }
}