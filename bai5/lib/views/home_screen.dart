import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Biến trạng thái lưu màu hiện tại, mặc định là màu Xám
  Color _currentColor = Colors.grey;

  // Hàm bất đồng bộ (async) để chờ kết quả trả về
  Future<void> _navigateAndPickColor() async {
    // Ép kiểu dữ liệu trả về thành Color? (Có thể null nếu user nhấn nút Back của điện thoại)
    final selectedColor = await Navigator.pushNamed(
      context, 
      AppRoutes.pickColor,
    ) as Color?;

    // Nếu người dùng có chọn màu (không null) -> Cập nhật UI
    if (selectedColor != null) {
      setState(() {
        _currentColor = selectedColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hiển thị Box màu
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: _currentColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            
            // Nút mở màn hình chọn màu
            ElevatedButton.icon(
              onPressed: _navigateAndPickColor,
              icon: const Icon(Icons.color_lens),
              label: const Text('Pick Color', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}