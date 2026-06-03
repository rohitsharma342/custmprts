import 'package:flutter/material.dart';
import '../screens/splash_screen.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';
import '../screens/dashboard_screen.dart';
import '../screens/product_detail_screen.dart';
import '../screens/cart_screen.dart';
import '../screens/checkout_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/order_detail_screen.dart';
import '../models/product.dart';
import '../models/order.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String dashboard = '/dashboard';
  static const String productDetail = '/product-detail';
  static const String cart = '/cart';
  static const String checkout = '/checkout';
  static const String profile = '/profile';
  static const String orderDetail = '/order-detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return _buildPageRoute(const SplashScreen(), settings);
      case login:
        return _buildPageRoute(const LoginScreen(), settings);
      case register:
        return _buildPageRoute(const RegisterScreen(), settings);
      case dashboard:
        return _buildPageRoute(const DashboardScreen(), settings);
      case productDetail:
        final product = settings.arguments as Product;
        return _buildPageRoute(ProductDetailScreen(product: product), settings);
      case cart:
        return _buildPageRoute(const CartScreen(), settings);
      case checkout:
        return _buildPageRoute(const CheckoutScreen(), settings);
      case profile:
        return _buildPageRoute(const ProfileScreen(), settings);
      case orderDetail:
        final order = settings.arguments as Order;
        return _buildPageRoute(OrderDetailScreen(order: order), settings);
      default:
        return _buildPageRoute(const SplashScreen(), settings);
    }
  }

  static PageRouteBuilder _buildPageRoute(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOutCubic;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(position: offsetAnimation, child: child);
      },
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}