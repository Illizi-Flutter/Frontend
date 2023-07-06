import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:illizi/controllers/produitContoller.dart';
import 'package:illizi/widget/customAppBar.dart';

import '../widget/customProductList.dart';

class ListeView extends GetView<ProduitController> {
  ListeView({super.key});

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    controller.getProduits();
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
          child: Column(
        children: [
          CustomAppBar(),
          SingleChildScrollView(
              child: GetBuilder<ProduitController>(builder: (c) {
            return Container(
                child: FutureBuilder(
              future: controller.waitAndLoadData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
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
                              imageUser: 'assets/images/logo.png',
                              nbrArticle:
                                  '${c.listeProduits?.data?[index].quantity}',
                              quantiteRestante:
                                  '${c.listeProduits?.data?[index].quantity}',
                              prix: '${c.listeProduits?.data?[index].prix}',
                              imageProd: '${c.listeProduits?.data?[index].image}'
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        );
                      },
                      itemCount: c.listeProduits?.data?.length ?? 0);
                }
              },
            ));
          }))
        ],
      )),
    )

        //       Column(
        //   children: [
        //       CustomAppBar(),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       Text('data', ),
        //       ListView.builder(
        //         itemCount: 1,
        //         itemBuilder: (BuildContext context, int index) {
        //           return Text('rrrrrrr $index');
        //         },
        //       ),
        //       Text('gggg')
        //   ],
        // ),
        );
  }
}
