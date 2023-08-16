import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:illizi/models/abstractJson.dart';
import 'package:illizi/networking/apiManager.dart';
import 'package:illizi/networking/listeProduitApi.dart';
import 'package:illizi/models/listeProduitModel.dart';

import '../config/app_config.dart';
import '../config/dio_singleton.dart';
import '../models/getProductModel.dart';
import '../networking/getProduct.dart';

class ProduitController extends GetxController {
  ListeProduitApi listeProduitApi = ListeProduitApi();
  GetProduct getProduct = GetProduct();
  ListeProduitModel? listeProduits;
  ListeProduitModel? listeProduitsUser;
  GetProductModel? getProductModel;
  DioSingleton dioSingleton = DioSingleton();

  var dataLoaded = false.obs;

  void loadData() {
    // Simulate loading data
    Future.delayed(Duration(seconds: 2), () {
      dataLoaded.value = true;
    });
  }

  Future<void> waitAndLoadData() async {
    await Future.delayed(Duration(seconds: 1));
    Timer(Duration(seconds: 1), () {
      loadData();
    });
  }

  getProductsByUserId() async {
    await listeProduitApi.getData().then((value) => {
          // print('liste produits=======> $value'),
          listeProduitsUser = value as ListeProduitModel,
    });
  }

// getProduits()async {
//   await listeProduitApi.getData().then((value) =>  {
//     print('liste produits=======> $value}'),
//     listeProduits = value as ListeProduitModel
//   });
// }

}
