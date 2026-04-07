import 'package:flutter/material.dart';
import '../views/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product List App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(), // Không dùng const vì HomeScreen tự tạo danh sách
    );
  }
}