import 'package:flutter/material.dart';
import '../models/order.dart';
import '../models/cart_item.dart';
import '../data/static_data.dart';

class OrderProvider extends ChangeNotifier {
  List<Order> _orders = [];
  bool _isLoading = false;
  String? _error;

  List<Order> get orders => List.unmodifiable(_orders);
  bool get isLoading => _isLoading;
  String? get error => _error;

  OrderProvider() {
    loadOrders();
  }

  Future<void> loadOrders() async {
    _isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(milliseconds: 500));

    _orders = StaticData.sampleOrders;

    _isLoading = false;
    notifyListeners();
  }

  Future<Order?> placeOrder({
    required List<CartItem> items,
    required double totalAmount,
    required String shippingAddress,
    required String paymentMethod,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));

    try {
      final order = Order(
        id: 'ORD${DateTime.now().millisecondsSinceEpoch}',
        items: items,
        totalAmount: totalAmount,
        shippingAddress: shippingAddress,
        paymentMethod: paymentMethod,
        status: OrderStatus.confirmed,
        createdAt: DateTime.now(),
        estimatedDelivery: DateTime.now().add(const Duration(days: 7)),
      );

      _orders.insert(0, order);
      _isLoading = false;
      notifyListeners();
      return order;
    } catch (e) {
      _error = 'Failed to place order. Please try again.';
      _isLoading = false;
      notifyListeners();
      return null;
    }
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}