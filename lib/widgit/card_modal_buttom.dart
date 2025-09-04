import 'package:flutter/material.dart';

class ModalBottom extends StatefulWidget {
  final Function(String, Color) addTask;
  const ModalBottom({super.key, required this.addTask});

  @override
  State<ModalBottom> createState() => _ModalBottomState();
}

class _ModalBottomState extends State<ModalBottom> {
  final TextEditingController controller = TextEditingController();
  bool isImportant = false; // mặc định là task thường

  void _handleAdd(BuildContext context) {
    final name = controller.text.trim();
    if (name.isNotEmpty) {
      final color = isImportant ? Colors.yellowAccent : Colors.white;
      widget.addTask(name, color);
      Navigator.pop(context); // đóng sau khi add
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mời bạn nhập vào',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isImportant
                          ? Colors.amber
                          : Colors.grey[300],
                    ),
                    onPressed: () {
                      setState(() {
                        isImportant = !isImportant; // bật/tắt quan trọng
                      });
                    },
                    child: Text(
                      isImportant ? "No note ❌" : "Note ✅ ",
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _handleAdd(context),
                child: const Text("Add Task"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
