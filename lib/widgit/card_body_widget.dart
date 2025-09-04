import 'package:flutter/material.dart';
import 'package:thethao12/Modal/items.dart';
import 'package:confirm_dialog/confirm_dialog.dart';

class CardBody extends StatelessWidget {
  final DataItems item;
  const CardBody({
    super.key,
    required this.item,
    required this.handleDeleteTask,
  });

  final Function handleDeleteTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 70,
      decoration: BoxDecoration(
        color: item.color,
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
            InkWell(
              onTap: () async {
                if (await confirm(
                  context,
                  title: const Text('TODOList'),
                  content: const Text('Would you like to remove?'),
                  textOK: const Text('Yes'),
                  textCancel: const Text('No'),
                )) {
                  handleDeleteTask(item.id); // gọi hàm xoá
                  return;
                }
                SizedBox(height: 12);
                return print('pressedCancel');
              },

              child: Icon(
                Icons.delete_outlined,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
