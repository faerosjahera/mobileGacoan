import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  final double price;
  final int quantity;
  final VoidCallback onAddToCart;

  const ItemBottomNavBar({
    super.key, 
    required this.price, 
    required this.quantity, 
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  "Price:",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 15),
                Text(
                  "Rp.${(price * quantity).toStringAsFixed(0)}",
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
            OutlinedButton.icon(
              onPressed: onAddToCart,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                ),
              ),
              icon: const Icon(
                CupertinoIcons.cart_badge_plus,
                color: Colors.white,
              ),
              label: const Text(
                'Add To Cart',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
