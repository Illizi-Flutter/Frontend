import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomProductList extends StatelessWidget {
  final String? imageUser,comment, nbrArticle,quantiteRestante, prix, imageProd;
  const CustomProductList({super.key, this.imageUser, this.comment, this.nbrArticle, this.quantiteRestante, this.prix, this.imageProd});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .35,
      width: MediaQuery.of(context).size.width * .95,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0.1, 1),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('$imageUser'),
              ),
              Text('$comment', style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 22, color: Colors.blue
              ),),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Nombre d'article - ",  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black
                  ),),
                  SizedBox(
                    width: 5,
                  ),
                  Text("$nbrArticle",  style: TextStyle(
                      fontSize: 18, color: Colors.black
                  ),)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Restants - ",  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black
                  ),),
                  SizedBox(
                    width: 5,
                  ),
                  Text("$quantiteRestante",  style: TextStyle(
                      fontSize: 18, color: Colors.black
                  ),)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Prix d'access - ",  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black
                  ),),
                  SizedBox(
                    width: 5,
                  ),
                  Text("$prix",  style: TextStyle(
                      fontSize: 18, color: Colors.black
                  ),)
                ],
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset("$imageProd", width: 150)
        ],
      ),
    );
  }
}
