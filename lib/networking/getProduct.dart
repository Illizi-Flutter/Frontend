import 'package:illizi/networking/apiManager.dart';
import '../config/app_config.dart';
import '../models/abstractJson.dart';
import '../models/getProductModel.dart';

class GetProduct extends ApiManager {
  @override
  String apiUrl() {
    print('url getProdById =====> ${AppConfig.getProduct_url}');
    return AppConfig.getProduct_url;
  }

  @override
  AbstractJsonResource fromJson(data) {
    print('data fromJson ===============> $data');
    return GetProductModel.fromJson(data);
  }
}