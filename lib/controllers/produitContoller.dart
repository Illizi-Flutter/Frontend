import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:illizi/networking/listeProduitApi.dart';
import 'package:illizi/view/categoryView.dart';
import 'package:illizi/models/listeProduitModel.dart';

class ProduitController extends GetxController {

  ListeProduitApi listeProduitApi = ListeProduitApi();
  ListeProduitModel? listeProduits;
  /*************************************************************/
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








  getProduits()async {
    await listeProduitApi.getData().then((value) =>  {
      print('liste produits=======> $value}'),
      listeProduits = value as ListeProduitModel
    });
  }
}
