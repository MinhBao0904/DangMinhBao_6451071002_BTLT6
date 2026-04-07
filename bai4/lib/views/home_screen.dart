import 'package:flutter/material.dart';
import '../models/product.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // Tạo một danh sách sản phẩm giả (Mock data)
  final List<Product> products = [
    Product(name: 'Điện thoại iPhone 15 Pro', price: 999.0),
    Product(name: 'MacBook Air M3', price: 1199.0),
    Product(name: 'Tai nghe AirPods Pro', price: 249.0),
    Product(name: 'Đồng hồ Apple Watch', price: 399.0),
    Product(name: 'Chuột Magic Mouse', price: 79.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách sản phẩm'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      // Sử dụng ListView.builder để tối ưu hiệu suất cho danh sách
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index]; // Lấy ra sản phẩm tại vị trí index
          
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: const Icon(Icons.inventory_2, color: Colors.teal),
              title: Text(
                product.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('\$${product.price}'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              // Bắt sự kiện khi nhấn vào 1 dòng
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // Truyền thẳng object product vào constructor của DetailScreen
                    builder: (context) => DetailScreen(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}