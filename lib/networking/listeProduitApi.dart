import 'package:flutter/cupertino.dart';
import 'package:illizi/models/listeProduitModel.dart';
import 'package:illizi/networking/apiManager.dart';

import '../config/app_config.dart';
import '../models/abstractJson.dart';

class ListeProduitApi extends ApiManager {
  @override
  String apiUrl() {
    print('url getProduits =====> ${AppConfig.getProduits_url}');
    return AppConfig.getProduits_url;
  }

  @override
  AbstractJsonResource fromJson(data) {
    print('data===============> $data');
    return ListeProduitModel.fromJson(data);
  }

  String formatter(String url) {
    return "http://localhost:8000/" + url;
  }

  String getImage(String image) {
    return formatter("images/$image");
  }
}
