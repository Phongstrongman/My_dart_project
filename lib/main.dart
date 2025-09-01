import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:thethao12/Modal/items.dart';
import 'package:thethao12/widgit/card_modal_buttom.dart';

import 'widgit/card_body_widget.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<DataItems> items = [];

  void _handleAddTask(String name) {
    final newItem = DataItems(id: DateTime.now().toString(), name: name);
    setState(() {
      items.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('ToDoList', style: TextStyle(fontSize: 40)),
        ), //tạo tên với kích thước màu
        backgroundColor: const Color.fromARGB(
          255,
          7,
          143,
          255,
        ), // tạo màu sắc cho ở trên appví
      ),

      body: ListView(
        children: items.map((item) => CardBody(item: item)).toList(),
      ), // xóa mảng lixt và bắt đầu tạo mảng để duyệt
      // mỗi lần retrun về item 1 cái thì ca gán nso vào giá trị card body
      floatingActionButton: FloatingActionButton(
        //tạo nút icon (+)
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ), // set lại moder
            // làm cho nó tròn lại
            isScrollControlled:
                true, // khởi tạo để bàn phím bấm  khi xoay không che task

            context: context,
            builder: (BuildContext content) {
              return ModalBottom(addTask: _handleAddTask);
            },
          );
        },

        child: const Icon(Icons.add, size: 20), // tạo icon nút nhấm
      ),
    );
  }
}
