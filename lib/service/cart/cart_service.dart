import 'package:dio/dio.dart';
import '../auth_service/auth_service.dart'; // Service AuthService
import '../providers/cart_providers.dart'; // Provider CartProvider

class CartService {
  final Dio _dio;

  CartService()
      : _dio = Dio(
        BaseOptions(
          baseUrl: 'http://127.0.0.1:8000/api',
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer ${AuthService.token}',
          },
        ),
      );

  Future<void> checkoutCart(CartProvider cart) async {
    try {
      final List<Map<String, dynamic>> items = cart.items.map((item) => {
        'product_id': item.product.id,
        'quantity': item.quantity,
      }).toList();

      await _dio.post('/checkout', data: {'items': items});
    } catch (e) {
      print('Error in checkoutCart: $e');
      throw Exception('Failed to checkout cart: $e');
    }
  }
}
