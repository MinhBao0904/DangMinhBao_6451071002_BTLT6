import 'package:flutter/material.dart';
import '../utils/app_routes.dart';
import '../widget/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Key để quản lý trạng thái của Form
  final _formKey = GlobalKey<FormState>();
  
  // Controller để lấy giá trị từ TextFormField
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose(); // Đừng quên giải phóng bộ nhớ
    super.dispose();
  }

  void _navigateToProfile() {
    // Kích hoạt hàm validator trong TextFormField
    if (_formKey.currentState!.validate()) {
      // Lấy tên đã nhập và xóa khoảng trắng thừa
      final String username = _usernameController.text.trim();

      // Sử dụng Named Route và truyền arguments
      Navigator.pushNamed(
        context,
        AppRoutes.profile,
        arguments: username,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Tên người dùng',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                  // Logic validate: Không được để trống
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập tên người dùng!';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                CustomButton(
                  text: 'Go to Profile',
                  onPressed: _navigateToProfile,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}