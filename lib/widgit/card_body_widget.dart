import 'package:flutter/material.dart';
import 'package:thethao12/Modal/items.dart';

class CardBody extends StatelessWidget {
  final DataItems item;

  const CardBody({super.key, required this.item});

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
              item.name,

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
