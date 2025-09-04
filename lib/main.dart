import 'package:flutter/material.dart';
import 'package:thethao12/Modal/items.dart';
import 'package:thethao12/widgit/card_modal_buttom.dart';
import 'widgit/card_body_widget.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<DataItems> items = [];

  // ✅ Hàm chung: thêm task thường hoặc quan trọng
  void _handleAddTask(String name, Color color) {
    final newItem = DataItems(
      id: DateTime.now().toString(),
      name: name,
      color: color,
    );
    setState(() {
      items.add(newItem);
    });
  }

  void _handleDeleteTask(String id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('ToDoList', style: TextStyle(fontSize: 40)),
        ),
        backgroundColor: const Color.fromARGB(255, 7, 143, 255),
      ),

      body: ListView(
        children: [
          const SizedBox(height: 8),
          ...items.map(
            (item) => Column(
              children: [
                CardBody(item: item, handleDeleteTask: _handleDeleteTask),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.grey[200],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return ModalBottom(addTask: _handleAddTask); // ✅ chỉ cần 1 hàm
            },
          );
        },
        child: const Icon(Icons.add, size: 20),
      ),
    );
  }
}
