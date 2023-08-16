import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:illizi/view/DetailProduit.dart';

class CustomProductList extends StatelessWidget {
  final String? imageUser,
      username,
      nbrArticle,
      quantiteRestante,
      prix,
      id,
      imageProd;
  final AssetImage? image;

  CustomProductList(
      {super.key,
      this.imageUser,
      this.username,
      this.nbrArticle,
      this.quantiteRestante,
      this.prix,
      this.imageProd,
      this.image,
      this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .32,
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
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.8),
                        spreadRadius: 0.1,
                        blurRadius: 15,
                        offset: const Offset(0.1, 0.1),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 40,
                  child: Container(
                    width: 60,
                    height: 60,
                    child: Image.network('$imageUser'),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                '$username',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "Nombre d'article - ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "$nbrArticle",
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              // Row(
              //   children: [
              //     Text("Restants - ",  style: TextStyle(
              //         fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black
              //     ),),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Text("$quantiteRestante",  style: TextStyle(
              //         fontSize: 18, color: Colors.black
              //     ),)
              //   ],
              // ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    "Prix d'access - ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "$prix",
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),

          Container(
              width: 150,
              height: 250,
                child: Image.network('$imageProd'),
                )
        ],
      ),
    );
  }
}
