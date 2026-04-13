import 'package:flutter/material.dart';

class PickColorScreen extends StatelessWidget {
  const PickColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Tạo một danh sách các màu để hiển thị
    final List<Map<String, dynamic>> colors = [
      {'name': 'Đỏ (Red)', 'color': Colors.red},
      {'name': 'Xanh dương (Blue)', 'color': Colors.blue},
      {'name': 'Xanh lá (Green)', 'color': Colors.green},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Chọn một màu')),
      body: ListView.separated(
        itemCount: colors.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = colors[index];
          final Color itemColor = item['color'];
          final String itemName = item['name'];

          return ListTile(
            leading: CircleAvatar(backgroundColor: itemColor),
            title: Text(
              itemName, 
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Điểm mấu chốt: Đóng màn hình hiện tại và truyền đối tượng Color về
              Navigator.pop(context, itemColor);
            },
          );
        },
      ),
    );
  }
}