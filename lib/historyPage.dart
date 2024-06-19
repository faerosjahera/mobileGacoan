import 'package:Gacoans/detHistory.dart';
import 'package:flutter/material.dart';
import 'package:Gacoans/service/models/order.dart';
import 'package:Gacoans/service/order/order_service.dart';

class OrderHistoryScreen extends StatefulWidget {
  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  Future<List<Order>>? _orderHistoryFuture;

  @override
  void initState() {
    super.initState();
    _orderHistoryFuture = OrderService().getOrderHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order History', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
      ),
      body: FutureBuilder<List<Order>>(
        future: _orderHistoryFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error.toString()}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No order history available'));
          } else {
            final orders = snapshot.data!;
            print('Fetched orders: ${orders.length}');
            return ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailScreen(order: order),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.pink[300], // Ubah warna background sesuai keinginan Anda
                      child: ListTile(
                        title: Text(
                          'No Order: ${order.id}',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Total Belanja: Rp.${order.totalAmount.toStringAsFixed(2)}',
                          style: TextStyle(color: Colors.white),
                        ),
                        // Tambahkan informasi lain yang ingin ditampilkan
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
