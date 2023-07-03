import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  final String? label, hintText;
  final Icon? icon, suffixIcon;
  final Function? function;
  final bool obscureText;
  final TextEditingController textEditingController;
  const CustomTextField({super.key, this.label, this.hintText, this.icon, this.function, required this.obscureText, this.suffixIcon, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
      child: TextField(
        controller:textEditingController ,
        obscureText: obscureText,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Container(
              height: 70,
              width: 80,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      spreadRadius: 0.1,
                      blurRadius: 15,
                      offset: const Offset(0.1, 0.1),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: icon
            ),
            suffixIcon: suffixIcon,
            label: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text('$label')),
            hintText:
            '$hintText'),
      ),
    );
  }
}
//Enter secure password between 6 and 8 characters
