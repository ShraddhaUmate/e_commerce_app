import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../models/product_model.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    final items = cart.items.values.toList();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.orangeAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(
            title: Text("Cart"),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: items.isEmpty
          ? Center(
        child: Text("Cart is empty", style: TextStyle(fontSize: 18, color: Colors.deepOrange)),
      )
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final product = items[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  elevation: 4,
                  shadowColor: Colors.orangeAccent.withOpacity(0.4),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: Image.network(product.image, height: 50),
                    title: Text(product.title),
                    subtitle: Text("Price: \$${product.price.toStringAsFixed(2)}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            icon: Icon(Icons.remove, color: Colors.deepOrange),
                            onPressed: () {
                              if (product.quantity > 1) {
                                cart.updateQuantity(product.id, product.quantity - 1);
                              }
                            }),
                        Text("${product.quantity}", style: TextStyle(fontWeight: FontWeight.bold)),
                        IconButton(
                            icon: Icon(Icons.add, color: Colors.deepOrange),
                            onPressed: () {
                              cart.updateQuantity(product.id, product.quantity + 1);
                            }),
                        IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () => cart.removeProduct(product.id)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Total: \$${cart.totalPrice.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Checkout"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
