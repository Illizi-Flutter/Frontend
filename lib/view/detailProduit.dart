import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/produitContoller.dart';
import '../models/getProductModel.dart';
import '../models/listeProduitModel.dart';
import '../networking/listeProduitApi.dart';
import '../widget/customAppBar2.dart';

class DetailProduit extends StatelessWidget {
  final GetProductModel? product;

  const DetailProduit({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //controller.getProductById(product?.id);
    print("+++++++++++++++++++++++++++++++ ${product?.data?.image}");
    // print(product?.id);
    // print(productIndex);
    // print(product);
    return Scaffold(
        body: Container(
            child: Column(children: [
      const CustomAppBar2(
          titre: "Place d'exposition", icon: Icons.arrow_back_rounded),
      Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .45,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        ListeProduitApi().getImage('${product?.data?.image}'))),
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${product?.data?.nom}',
                          style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Etat -',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                            Text(
                              ' ${product?.data?.etat}',
                              style: const TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Catégorie -',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                            Text(
                              ' ${product?.data?.nom}',
                              style: const TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    SizedBox(
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: const BoxDecoration(color: Colors.blue),
                        child: Text('    ${product?.data?.prix} €',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              const Divider(color: Color.fromRGBO(210, 229, 243, 1)),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('${product?.data?.description}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        )),
                    const SizedBox(
                      width: 150,
                    )
                  ],
                ),
              ),
              // const Divider(color: Color.fromRGBO(210, 229, 243, 1))
            ],
          )
        ],
      )
    ])));
  }
}
