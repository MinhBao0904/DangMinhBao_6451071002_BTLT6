import 'package:flutter/material.dart';
import 'settings_screen.dart'; // Phải import màn hình đích vào đây

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
            // Chuyển trang không dùng Named Route.
            // Ta tự tạo một MaterialPageRoute và truyền hàm builder trả về SettingsScreen.
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsScreen(),
              ),
            );
          },
          child: const Text('Go to Settings'),
        ),
      ),
    );
  }
}