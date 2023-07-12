import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final Function? function;

  const CustomButton({super.key, this.text, this.color, this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 15),
        height: 70,
        width: 180,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(100)),
        alignment: Alignment.center,
        child: GestureDetector(
          child: Text(
            '$text',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          onTap: () {
            function!();
          },
        ));
  }
}
