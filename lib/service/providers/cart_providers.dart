import 'package:flutter/foundation.dart';
import 'package:Gacoans/service/models/product.dart';
import 'package:dio/dio.dart';

import '../auth_service/auth_service.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, required this.quantity});
}

class CartProvider with ChangeNotifier {
  List<CartItem> _items = [];

  List<CartItem> get items => _items;

  double get totalAmount {
    return _items.fold(
        0.0, (sum, item) => sum + (item.product.price * item.quantity));
  }

  void addItem(Product product, int quantity) {
    var existingItem = _items.firstWhere(
        (item) => item.product.id == product.id,
        orElse: () => CartItem(product: product, quantity: 0));
    if (existingItem.quantity > 0) {
      existingItem.quantity += quantity;
    } else {
      _items.add(CartItem(product: product, quantity: quantity));
    }
    notifyListeners();
  }

  void increaseQuantity(Product product) {
    var existingItem =
        _items.firstWhere((item) => item.product.id == product.id);
    existingItem.quantity += 1;
    notifyListeners();
  }

  void decreaseQuantity(Product product) {
    var existingItem =
        _items.firstWhere((item) => item.product.id == product.id);
    if (existingItem.quantity > 1) {
      existingItem.quantity -= 1;
    } else {
      _items.remove(existingItem);
    }
    notifyListeners();
  }

  Future<void> checkout() async {
    final Dio dio = Dio(BaseOptions(baseUrl: 'http://127.0.0.1:8000/api'));

    try {
      final response = await dio.post(
        '/checkout',
        data: {
          'items': _items
              .map((item) => {
                    'product_id': item.product.id,
                    'quantity': item.quantity,
                  })
              .toList(),
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization':
                'Bearer ${AuthService.token}', // Sesuaikan dengan mekanisme autentikasi yang Anda gunakan
          },
        ),
      );

      if (response.statusCode == 201) {
        _items = [];
        notifyListeners();
      } else {
        throw Exception('Failed to checkout');
      }
    } catch (e) {
      print(e);
      throw Exception('Failed to checkout');
    }
  }
}
