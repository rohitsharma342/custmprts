class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final List<String> images;
  final List<String> sizes;
  final List<ProductColor> colors;
  final String category;
  final bool isTrending;
  final double rating;
  final int reviewCount;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.sizes,
    required this.colors,
    required this.category,
    this.isTrending = false,
    this.rating = 0.0,
    this.reviewCount = 0,
  });
}

class ProductColor {
  final String name;
  final int colorValue;

  ProductColor({required this.name, required this.colorValue});
}