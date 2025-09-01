import 'package:flutter/material.dart';

class ModalBottom extends StatelessWidget {
  ModalBottom({super.key, required this.addTask});

  final Function addTask;
  final TextEditingController controller = TextEditingController();

  void _handleOnClick(BuildContext context) {
    // hàm này  chức năng là đẩy dữ liệu người nhập vào

    final name = controller.text.trim();
    if (name.isNotEmpty) {
      addTask(name); // gọi hàm từ MyApp để thêm vào list
      Navigator.pop(context); // đóng bottom sheet
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              controller: controller, // ✅ fix ở đây
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mời bạn nhập vào',
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _handleOnClick(context),
                child: const Text('Add task'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
