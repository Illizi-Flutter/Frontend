import 'package:illizi/networking/apiManager.dart';

import '../config/app_config.dart';
import '../models/abstractJson.dart';
import '../models/ResetCodeModel.dart';

class ResetCodeApi extends ApiManager{
  @override
  String apiUrl() {
    print('url resetpassword=====W ${AppConfig.sendActivationCode_url}');
    return AppConfig.sendActivationCode_url ;
  }

  @override
  AbstractJsonResource fromJson(data) {
    return ResetCodeModel.fromJson(data);
  }}