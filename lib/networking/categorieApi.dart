import 'package:illizi/models/categorieModel.dart';
import 'package:illizi/networking/apiManager.dart';

import '../config/app_config.dart';
import '../models/abstractJson.dart';

class CategorieApi extends ApiManager{
  @override
  String apiUrl() {
    print('url getCategories =====> ${AppConfig.getCategories_url}');
    return AppConfig.getCategories_url ;
  }

  @override
  AbstractJsonResource fromJson(data) {
    print('data===============> $data');
    return CategorieModel.fromJson(data);
  }}