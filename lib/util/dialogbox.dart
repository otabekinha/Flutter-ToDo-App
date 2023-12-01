import 'package:flutter/material.dart';
import 'package:flutter_todo_app/util/mybutton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.pink.shade700,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink.shade200)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                hintText: 'Add a new task',
                hintStyle: TextStyle(
                  color: Colors.pink[200],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButoon(text: 'Save', onPressed: onSave),
                const SizedBox(
                  width: 8,
                ),
                MyButoon(text: 'Cancel', onPressed: onCancel)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
