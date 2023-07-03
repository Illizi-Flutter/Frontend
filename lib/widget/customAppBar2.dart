import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar2 extends StatelessWidget {
  final String? titre;
  final IconData? icon;
  const CustomAppBar2({super.key, this.titre, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .13,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        color: Colors.blue,
      ),
      padding: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          IconButton(onPressed: (){
            Navigator.of(context).pop();
          }, icon: Icon(icon, color: Colors.white,)),
          Text('$titre', style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white
          ),)
        ],
      ),
    );
  }
}
