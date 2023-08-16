import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:illizi/controllers/produitContoller.dart';
import 'package:illizi/networking/listeProduitApi.dart';
import 'package:illizi/widget/customAppBar.dart';

import '../config/app_config.dart';
import '../config/dio_singleton.dart';
import '../models/abstractJson.dart';
import '../models/getProductModel.dart';
import '../widget/customProductList.dart';
import 'DetailProduit.dart';

class ListeView extends GetView<ProduitController> {
  ListeView({super.key});

  ScrollController scrollController = ScrollController();
  ProduitController produitController = ProduitController();

  // GetProduct getProduct = GetProduct();
  GetProductModel? getProductModel;
  // GetProductModel getProductModel = GetProductModel();
  DioSingleton dioSingleton = DioSingleton();

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
                            GestureDetector(
                              onTap: () => {
                                getProductById(
                                        c.listeProduitsUser!.data?[index].id)
                                    .then((value) => {
                                          getProductModel =
                                              value as GetProductModel,

                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                  DetailProduit(product: getProductModel))),

                                        }),


                              },
                              child: CustomProductList(
                                id: '${c.listeProduitsUser?.data?[index].id}',
                                imageUser: ListeProduitApi().getImage(
                                    '${c.listeProduitsUser?.data?[index].imageUser}'),
                                username:
                                    '${c.listeProduitsUser?.data?[index].username}',
                                nbrArticle:
                                    '${c.listeProduitsUser?.data?[index].quantity}',
                                prix:
                                    '${c.listeProduitsUser?.data?[index].prix}',
                                imageProd: ListeProduitApi().getImage(
                                    '${c.listeProduitsUser?.data?[index].imageProd}'),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        );
                      },
                      itemCount: c.listeProduitsUser?.data?.length ?? 0);
                }
              },
            ));
          })),
        ],
      )),
    ));
  }

  Future<AbstractJsonResource?> getProductById(String? id) async {
    var res = await dioSingleton.dio.get(
      '${AppConfig.getProduct_url}/$id',
    );
    print(res.data['data'].runtimeType);

    print("res======>${res.data['data']}");
    // (jsonDecode(res.data) as List).map((dynamic e) => e as Map<String, dynamic>).toList();

    print(GetProductModel.fromJson(res.data));
    return GetProductModel.fromJson(res.data);

    // print("id ===================> $id");
    // await getProduct.postData({"sId": id}).then((value) => {
    //   getProductModel = value as GetProductModel
    // });
  }
}
