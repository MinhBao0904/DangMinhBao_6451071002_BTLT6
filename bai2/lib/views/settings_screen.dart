import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        // Lưu ý: AppBar mặc định sẽ tự tạo nút Back (mũi tên) trên góc trái.
        // Bạn có thể dùng nút đó, hoặc dùng nút bên dưới body đều có tác dụng như nhau.
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            // Xoá màn hình hiện tại (SettingsScreen) khỏi Stack
            // và quay về màn hình trước đó (HomeScreen)
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          label: const Text('Back to Home'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade300,
            foregroundColor: Colors.black87,
          ),
        ),
      ),
    );
  }
}