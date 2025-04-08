class Product {
  final int id;
  final String title;
  final double price;
  final String image;
  final String description; // New field

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.description, // Initialize the new field
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      image: json['image'],
      description: json['description'], // Parse the description
    );
  }
}