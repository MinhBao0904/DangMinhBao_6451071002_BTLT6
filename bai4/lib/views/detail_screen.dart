import 'package:flutter/material.dart';
import '../models/product.dart';

class DetailScreen extends StatelessWidget {
  // Khai báo biến product
  final Product product;

  // Bắt buộc truyền product thông qua constructor (required)
  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết sản phẩm'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.shopping_bag, size: 120, color: Colors.blueGrey),
              const SizedBox(height: 30),
              Text(
                product.name,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Text(
                'Giá: \$${product.price}',
                style: const TextStyle(fontSize: 24, color: Colors.redAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}