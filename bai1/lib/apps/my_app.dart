import 'package:flutter/material.dart';
import '../views/home_screen.dart';
import '../views/about_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Company App',
      // Khai báo route đầu tiên khi app khởi chạy
      initialRoute: '/', 
      // Khai báo danh sách các Named Routes
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}