import '../models/product.dart';
import '../models/user.dart';
import '../models/order.dart';
import '../models/cart_item.dart';

class StaticData {
  static List<String> categories = [
    'Classic',
    'Graphic',
    'Vintage',
    'Sports',
    'Minimal',
  ];

  static List<Product> products = [
    Product(
      id: 'prod_001',
      name: 'Classic White Tee',
      description: 'Premium quality cotton t-shirt perfect for everyday wear. Soft, breathable fabric with a comfortable fit.',
      price: 24.99,
      images: [
        'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=500',
        'https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?w=500',
      ],
      sizes: ['XS', 'S', 'M', 'L', 'XL', 'XXL'],
      colors: [
        ProductColor(name: 'White', colorValue: 0xFFFFFFFF),
        ProductColor(name: 'Black', colorValue: 0xFF000000),
        ProductColor(name: 'Gray', colorValue: 0xFF808080),
      ],
      category: 'Classic',
      isTrending: true,
      rating: 4.8,
      reviewCount: 256,
    ),
    Product(
      id: 'prod_002',
      name: 'Urban Graphic Print',
      description: 'Bold graphic design t-shirt featuring urban artwork. Stand out with this unique streetwear piece.',
      price: 34.99,
      images: [
        'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=500',
        'https://images.unsplash.com/photo-1503341504253-dff4815485f1?w=500',
      ],
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Black', colorValue: 0xFF000000),
        ProductColor(name: 'Navy', colorValue: 0xFF000080),
      ],
      category: 'Graphic',
      isTrending: true,
      rating: 4.6,
      reviewCount: 189,
    ),
    Product(
      id: 'prod_003',
      name: 'Vintage Wash Tee',
      description: 'Retro-inspired vintage wash t-shirt with a faded look. Perfect for a laid-back, casual style.',
      price: 29.99,
      images: [
        'https://images.unsplash.com/photo-1622445275576-721325763afe?w=500',
        'https://images.unsplash.com/photo-1618354691373-d851c5c3a990?w=500',
      ],
      sizes: ['XS', 'S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Washed Blue', colorValue: 0xFF6B8E9F),
        ProductColor(name: 'Washed Black', colorValue: 0xFF3D3D3D),
        ProductColor(name: 'Washed Red', colorValue: 0xFF9F6B6B),
      ],
      category: 'Vintage',
      isTrending: false,
      rating: 4.5,
      reviewCount: 124,
    ),
    Product(
      id: 'prod_004',
      name: 'Sports Performance Tee',
      description: 'Moisture-wicking athletic t-shirt designed for maximum performance. Lightweight and breathable.',
      price: 39.99,
      images: [
        'https://images.unsplash.com/photo-1571945153237-4929e783af4a?w=500',
        'https://images.unsplash.com/photo-1556906781-9a412961c28c?w=500',
      ],
      sizes: ['S', 'M', 'L', 'XL', 'XXL'],
      colors: [
        ProductColor(name: 'Lime', colorValue: 0xFF82BD00),
        ProductColor(name: 'Blue', colorValue: 0xFF0066CC),
        ProductColor(name: 'Red', colorValue: 0xFFCC0000),
      ],
      category: 'Sports',
      isTrending: true,
      rating: 4.9,
      reviewCount: 312,
    ),
    Product(
      id: 'prod_005',
      name: 'Minimal Essential',
      description: 'Clean and simple essential t-shirt with minimalist design. Versatile piece for any wardrobe.',
      price: 22.99,
      images: [
        'https://images.unsplash.com/photo-1581655353564-df123a1eb820?w=500',
        'https://images.unsplash.com/photo-1562157873-818bc0726f68?w=500',
      ],
      sizes: ['XS', 'S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'White', colorValue: 0xFFFFFFFF),
        ProductColor(name: 'Beige', colorValue: 0xFFF5F5DC),
        ProductColor(name: 'Sage', colorValue: 0xFF9CAF88),
      ],
      category: 'Minimal',
      isTrending: false,
      rating: 4.7,
      reviewCount: 198,
    ),
    Product(
      id: 'prod_006',
      name: 'Artistic Expression',
      description: 'Unique hand-drawn style artwork on premium fabric. Express your creative side.',
      price: 44.99,
      images: [
        'https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?w=500',
        'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?w=500',
      ],
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Cream', colorValue: 0xFFFFFDD0),
        ProductColor(name: 'Charcoal', colorValue: 0xFF36454F),
      ],
      category: 'Graphic',
      isTrending: true,
      rating: 4.8,
      reviewCount: 87,
    ),
    Product(
      id: 'prod_007',
      name: 'Retro Sports Logo',
      description: 'Classic sports-inspired design with vintage logo print. Nostalgic athletic style.',
      price: 32.99,
      images: [
        'https://images.unsplash.com/photo-1554568218-0f1715e72254?w=500',
        'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd0?w=500',
      ],
      sizes: ['S', 'M', 'L', 'XL', 'XXL'],
      colors: [
        ProductColor(name: 'Maroon', colorValue: 0xFF800000),
        ProductColor(name: 'Forest Green', colorValue: 0xFF228B22),
        ProductColor(name: 'Navy', colorValue: 0xFF000080),
      ],
      category: 'Sports',
      isTrending: false,
      rating: 4.4,
      reviewCount: 156,
    ),
    Product(
      id: 'prod_008',
      name: 'Premium Black Tee',
      description: 'Luxurious black t-shirt with superior fabric quality. The ultimate wardrobe staple.',
      price: 27.99,
      images: [
        'https://images.unsplash.com/photo-1503342394128-c104d54dba01?w=500',
        'https://images.unsplash.com/photo-1618354691551-44de113f0164?w=500',
      ],
      sizes: ['XS', 'S', 'M', 'L', 'XL', 'XXL'],
      colors: [
        ProductColor(name: 'Black', colorValue: 0xFF000000),
      ],
      category: 'Classic',
      isTrending: false,
      rating: 4.9,
      reviewCount: 445,
    ),
  ];

  static User sampleUser = User(
    id: 'user_001',
    name: 'John Doe',
    email: 'test@example.com',
    phone: '+1 234 567 8900',
    address: '123 Main Street, New York, NY 10001',
    avatarUrl: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150',
    createdAt: DateTime.now().subtract(const Duration(days: 365)),
  );

  static List<Order> sampleOrders = [
    Order(
      id: 'ORD001',
      items: [
        CartItem(
          id: 'cart_001',
          product: products[0],
          selectedSize: 'M',
          selectedColor: products[0].colors[0],
          quantity: 2,
        ),
      ],
      totalAmount: 54.97,
      shippingAddress: '123 Main Street, New York, NY 10001',
      paymentMethod: 'Credit Card',
      status: OrderStatus.delivered,
      createdAt: DateTime.now().subtract(const Duration(days: 15)),
      estimatedDelivery: DateTime.now().subtract(const Duration(days: 8)),
    ),
    Order(
      id: 'ORD002',
      items: [
        CartItem(
          id: 'cart_002',
          product: products[1],
          selectedSize: 'L',
          selectedColor: products[1].colors[0],
          quantity: 1,
        ),
        CartItem(
          id: 'cart_003',
          product: products[3],
          selectedSize: 'M',
          selectedColor: products[3].colors[0],
          quantity: 1,
        ),
      ],
      totalAmount: 82.96,
      shippingAddress: '123 Main Street, New York, NY 10001',
      paymentMethod: 'PayPal',
      status: OrderStatus.shipped,
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
      estimatedDelivery: DateTime.now().add(const Duration(days: 4)),
    ),
    Order(
      id: 'ORD003',
      items: [
        CartItem(
          id: 'cart_004',
          product: products[5],
          selectedSize: 'S',
          selectedColor: products[5].colors[0],
          quantity: 1,
        ),
      ],
      totalAmount: 50.48,
      shippingAddress: '123 Main Street, New York, NY 10001',
      paymentMethod: 'Credit Card',
      status: OrderStatus.processing,
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      estimatedDelivery: DateTime.now().add(const Duration(days: 6)),
    ),
  ];
}