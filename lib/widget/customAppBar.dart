import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .25,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        color: Colors.blue,
      ),
      padding: EdgeInsets.all(10),
      child: const Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // SizedBox(
              //   width:10,
              // ),
              Text('Illizi So Easy!' , style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold
            ),),
              Spacer(),

              Icon(Icons.search, color: Colors.white, size: 35,)
            
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('Rencontrez, Vendez, Achetez, Recyclez, Organizez, Partagez un café,'
              ' Repas, Objet, un Moment!!\n Où Que Vous Soyez' , style: TextStyle(
              color: Colors.white, fontSize: 16
          ),),

        ],
      ),
    );
  }
}
