class Product {
  final int id;
  final String name;
  final String imageUrl;
  final double price;
  final String? description;
  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: int.parse(json['id']),
      name: json['name'],
      imageUrl: json['imageUrl'],
      price: (json['price'] as num).toDouble(),
      description: json['description'],
    );
  }
}
