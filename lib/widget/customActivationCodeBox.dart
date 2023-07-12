import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomActivationCodeBox extends StatelessWidget {
  final TextEditingController? textEditingController;

   CustomActivationCodeBox(
      {super.key,this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 58,
      padding: EdgeInsets.only(left: 30),

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
          borderRadius: BorderRadius.circular(20)),

      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus(); //whatever you want to do
          }
        },
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(1)
        ], // Only numbers can be
        controller: textEditingController,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    )
    ;
  }
}
