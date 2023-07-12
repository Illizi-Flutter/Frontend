import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomModalTextField extends StatelessWidget {
  final String? label;
  final Icon? suffixIcon;
  final TextEditingController? textEditingController;

  const CustomModalTextField(
      {super.key, this.label, this.suffixIcon, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
            padding: EdgeInsets.only(left: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2),
                ),
              ],
              color: Colors.white,
            ),
            child: TextField(
              controller: textEditingController,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            )));
  }
}
