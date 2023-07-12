import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:illizi/view/categoryView.dart';

import '../models/CategorieModel.dart';
import '../networking/categorieApi.dart';

class CategorieController extends GetxController {

  CategorieApi categorieApi = CategorieApi();
  CategorieModel? listeCategories;
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


  getCategories()async {
    await categorieApi.getData().then((value) =>  {
      print('liste categories=======> $value}'),
      listeCategories = value as CategorieModel
    });
  }
}
