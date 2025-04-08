# TP MVVM

Un nouveau projet Flutter sur le mvvm

## Introduction

Ce projet est un point de départ pour une application Flutter utilisant le modèle architectural MVVM (Model-View-ViewModel). Il met en œuvre les concepts de gestion d'état avec `Provider` et la récupération de données depuis une API REST.

## Fonctionnalités

- Affichage d'une liste de produits récupérés depuis une API.
- Navigation vers un écran de détails pour chaque produit.
- Gestion de l'état avec le modèle MVVM.
- Indicateur de chargement lors de la récupération des données.

## Structure du projet

- **`lib/main.dart`** : Point d'entrée de l'application.
- **`lib/product.dart`** : Modèle de données représentant un produit.
- **`lib/api_service.dart`** : Service pour interagir avec l'API REST.
- **`lib/product_view_model.dart`** : ViewModel pour gérer les données et l'état des produits.
- **`lib/product_list_screen.dart`** : Écran affichant la liste des produits.
- **`lib/product_detail_screen.dart`** : Écran affichant les détails d'un produit.

## Prérequis

- Flutter SDK installé.
- Un éditeur de code comme IntelliJ IDEA ou Visual Studio Code.
- Une connexion Internet pour récupérer les données depuis l'API.

## Installation

1. Installez les dépendances :
   ```bash
   flutter pub get
   ```

## Lancer l'application

1. Connectez un appareil ou démarrez un émulateur.
2. Exécutez la commande suivante :
   ```bash
   flutter run
   ```

## Questions de vérification

- **Pourquoi utiliser un factory constructor ?**  
  Un factory constructor est utilisé pour créer une instance d'une classe de manière contrôlée. Il permet de retourner une instance existante, une sous-classe ou une nouvelle instance en fonction de la logique définie. Cela est utile pour gérer des cas comme le caching ou la validation avant la création d'un objet.


- **Pourquoi utiliser notifyListeners() ?**  
  La méthode `notifyListeners()` est utilisée pour informer les widgets qui écoutent un `ChangeNotifier` que l'état a changé. Cela déclenche une reconstruction des widgets dépendants, permettant de mettre à jour l'interface utilisateur en conséquence.


- **Que se passe-t-il si on oublie notifyListeners() ?**  
  Si `notifyListeners()` est oublié, les widgets qui dépendent du `ChangeNotifier` ne seront pas informés des changements d'état. Par conséquent, l'interface utilisateur ne sera pas mise à jour, ce qui peut entraîner des incohérences entre l'état interne et l'affichage.


- **Quelle est la responsabilité du ViewModel dans MVVM ?**  
  Le ViewModel est responsable de gérer la logique métier et l'état de l'application. Il agit comme un intermédiaire entre le modèle (données) et la vue (interface utilisateur). Il prépare les données pour la vue et réagit aux interactions de l'utilisateur en mettant à jour l'état ou en déclenchant des actions appropriées.


## Ressources utiles

- [Documentation Flutter](https://docs.flutter.dev/)
- [Provider Package](https://pub.dev/packages/provider)
- [HTTP Package](https://pub.dev/packages/http)