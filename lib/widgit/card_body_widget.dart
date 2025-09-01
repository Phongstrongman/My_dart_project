import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xffDFDFDF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ('Tập thể dục sáng  '),
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),

                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.delete_outlined, color: Color.fromARGB(255, 0, 0, 0)),
          ],
        ),
      ),
    );
  }
}
