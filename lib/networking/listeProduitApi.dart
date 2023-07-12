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
    return AppConfig.base_url + url;
  }

  String getImage(String image)
  {
    String url = formatter("images/$image");
    print("**********************************");
    print(url);
    return url;
  }
}