import 'package:flutter/material.dart';
import '../utils/app_routes.dart';
import '../views/home_screen.dart';
import '../views/pick_color_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Returning Data App',
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.pickColor: (context) => const PickColorScreen(),
      },
    );
  }
}