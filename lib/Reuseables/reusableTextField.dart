import 'package:flutter/material.dart';


class ReusableTextField extends StatelessWidget {
  String myHint;
  ReusableTextField({required this.myHint});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: myHint,
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
