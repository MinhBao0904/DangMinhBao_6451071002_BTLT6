import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Sử dụng pushNamed để chuyển trang.
            // Push sẽ thêm AboutScreen lên trên đỉnh Stack, 
            // do đó HomeScreen vẫn tồn tại bên dưới.
            Navigator.pushNamed(context, '/about');
          },
          child: const Text('Go to About'),
        ),
      ),
    );
  }
}