import 'package:dio/dio.dart';
import 'package:Gacoans/service/models/order.dart';
import 'package:Gacoans/service/auth_service/auth_service.dart';

class OrderService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://127.0.0.1:8000/api',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${AuthService.token}',
      },
    ),
  );

  Future<List<Order>> getOrderHistory() async {
    try {
      var response = await _dio.get('/order-history');
      if (response.statusCode == 200) {
        print('API Response: ${response.data}');
        List<Order> orders = (response.data['orders'] as List)
            .map((order) => Order.fromJson(order))
            .toList();
        print('Parsed Orders: $orders');
        return orders;
      } else {
        print('Failed response status: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error in fetching order history: $e');
      return [];
    }
  }
}
