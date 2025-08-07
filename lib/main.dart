import 'package:flutter/material.dart';

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
          SizedBox(height: 0),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 300,
              height: 30,
              color: const Color(0xff4B4B4B),
              alignment: Alignment.center,
              child: const Text(
                '',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        //tạo nút icon (+)
        onPressed: () {},
        child: const Icon(Icons.add, size: 20),
      ),
    );
  }
}
