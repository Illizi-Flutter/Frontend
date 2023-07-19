import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:illizi/controllers/produitContoller.dart';
import 'package:illizi/models/listeProduitModel.dart';
import 'package:illizi/networking/listeProduitApi.dart';
import 'package:illizi/widget/customAppBar.dart';

import '../widget/customProductList.dart';

class ListeView extends GetView<ProduitController> {
  ListeView({super.key});

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    controller.getProductsByUserId();
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomAppBar(),
                  SingleChildScrollView(
                      child: GetBuilder<ProduitController>(builder: (c) {
                        return Container(
                            child: FutureBuilder(
                              future: controller.waitAndLoadData(),
                              builder: (BuildContext context, AsyncSnapshot snapshot) {
                                if (snapshot.connectionState == ConnectionState.waiting) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else {
                                  return ListView.builder(
                                      controller: scrollController,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            CustomProductList(
                                              imageUser:
                                              ListeProduitApi().getImage('${c.listeProduitsUser?.data?[index].imageUser}'),
                                              username:
                                              '${c.listeProduitsUser?.data?[index].username}',

                                              nbrArticle:
                                              '${c.listeProduitsUser?.data?[index].quantity}',
                                              // quantiteRestante:
                                              // '${c.listeProduitsUser?.data?[index].quantity}',
                                              prix: '${c.listeProduitsUser?.data?[index].prix}',
                                              imageProd:
                                              ListeProduitApi().getImage('${c.listeProduitsUser?.data?[index].imageProd}'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            // Text('${c.listeProduitsUser?.data?[index].quantity}')
                                          ],
                                        );
                                      },
                                      itemCount: c.listeProduitsUser?.data?.length ?? 0);
                                }
                              },
                            ));
                      }))
                ],
              )),
        )

    );
  }
}