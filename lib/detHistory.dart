import 'package:flutter/material.dart';
import 'package:Gacoans/service/models/product.dart';
import 'package:Gacoans/service/models/order.dart';
import 'package:Gacoans/service/product/product_service.dart'; // Sesuaikan dengan service untuk mengambil data Product

class OrderDetailScreen extends StatelessWidget {
  final Order order;

  const OrderDetailScreen({required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order Detail - ${order.id}',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'No Order: ${order.id}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Total Belanja: Rp.${order.totalAmount.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Order Items:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: order.items.length,
                itemBuilder: (context, index) {
                  final item = order.items[index];
                  return FutureBuilder<Product>(
                    future: ProductService().getProduct(item.productId),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return ListTile(
                          title: Text('Loading product...'),
                          subtitle: Text('Quantity: ${item.quantity}'),
                          trailing: Text('Rp.${item.price.toStringAsFixed(2)}'),
                        );
                      } else if (snapshot.hasError) {
                        return ListTile(
                          title: Text('Product not found'),
                        );
                      } else {
                        final product = snapshot.data!;
                        return ListTile(
                          leading: Image.network(
                            product.photoUrl,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(Icons.error);
                            },
                          ),
                          title: Text(
                            product.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ), // Menggunakan nama produk dari Product
                          subtitle: Text('Quantity: ${item.quantity}'),
                          trailing: Text(
                            'Rp.${item.price.toStringAsFixed(2)}',
                            style: TextStyle(
                                color: Colors.pink[600], fontSize: 16),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
