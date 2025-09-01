import 'package:flutter/material.dart';

import 'widgit/card_body_widget.dart';

void main(List<String> args) {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        ), // tạo màu sắc cho ở trên app
      ),

      body: ListView(
        children: [
          SizedBox(height: 10), // nơi đẩy  thanh bar cách lớp appdart
          Align(alignment: Alignment.center, child: CardBody()),
          SizedBox(height: 10), // nơi đẩy  thanh bar cách lớp appdart
          Align(alignment: Alignment.center, child: CardBody()),
          SizedBox(height: 10), // nơi đẩy  thanh bar cách lớp appdart
          Align(alignment: Alignment.center, child: CardBody()),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        //tạo nút icon (+)
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext content) {
              return Container(height: 200, color: Colors.amber);
            },
          );
        },

        child: const Icon(Icons.add, size: 20),
      ),
    );
  }
}