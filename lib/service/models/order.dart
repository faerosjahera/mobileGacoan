import 'package:Gacoans/service/models/order_item.dart';

class Order {
  final int id;
  final double totalAmount;
  final List<OrderItem> items;

  Order({required this.id, required this.totalAmount, required this.items});

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      totalAmount: double.tryParse(json['total_amount'].toString()) ?? 0.0,
      items: (json['items'] as List)
          .map((item) => OrderItem.fromJson(item))
          .toList(),
    );
  }
}
