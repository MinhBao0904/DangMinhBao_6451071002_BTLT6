import 'package:flutter/material.dart';
import '../views/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anonymous Route App',
      // Sử dụng 'home' thay vì 'routes'
      home: const HomeScreen(), 
    );
  }
}