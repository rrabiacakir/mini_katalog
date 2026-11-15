class Product {
  final int id;
  final String name;
  final String tagline;
  final String price;
  final String image;
  final String imageUrl;
  final String description;
  final Map<String, String> specifications;

  const Product({
    required this.id,
    required this.name,
    required this.tagline,
    required this.price,
    required this.image,
    required this.imageUrl,
    required this.description,
    required this.specifications,
  });

  // JSON verisini (Map) Product nesnesine dönüştüren fabrika metodu (fromJson)
  factory Product.fromJson(Map<String, dynamic> json) {
    final rawSpecs = json['specifications'] as Map<String, dynamic>? ?? {};
    final parsedSpecs = rawSpecs.map(
      (key, value) => MapEntry(key, value.toString()),
    );

    return Product(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      tagline: json['tagline'] as String? ?? '',
      price: json['price'] as String? ?? '',
      image: json['image'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      description: json['description'] as String? ?? '',
      specifications: parsedSpecs,
    );
  }

  // Product nesnesini tekrar JSON (Map) formatına dönüştüren metot (toJson)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'tagline': tagline,
      'price': price,
      'image': image,
      'imageUrl': imageUrl,
      'description': description,
      'specifications': specifications,
    };
  }
}