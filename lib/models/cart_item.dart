import 'product.dart';

class CartItem {
  final String id;
  final Product product;
  final String selectedSize;
  final ProductColor selectedColor;
  int quantity;
  final String? customDesignUrl;
  final String? customText;

  CartItem({
    required this.id,
    required this.product,
    required this.selectedSize,
    required this.selectedColor,
    this.quantity = 1,
    this.customDesignUrl,
    this.customText,
  });

  double get totalPrice => product.price * quantity;

  CartItem copyWith({
    String? id,
    Product? product,
    String? selectedSize,
    ProductColor? selectedColor,
    int? quantity,
    String? customDesignUrl,
    String? customText,
  }) {
    return CartItem(
      id: id ?? this.id,
      product: product ?? this.product,
      selectedSize: selectedSize ?? this.selectedSize,
      selectedColor: selectedColor ?? this.selectedColor,
      quantity: quantity ?? this.quantity,
      customDesignUrl: customDesignUrl ?? this.customDesignUrl,
      customText: customText ?? this.customText,
    );
  }
}