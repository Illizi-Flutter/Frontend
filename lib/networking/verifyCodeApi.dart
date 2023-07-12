import 'package:illizi/networking/apiManager.dart';

import '../config/app_config.dart';
import '../models/abstractJson.dart';
import '../models/ResetCodeModel.dart';
import '../models/verifyCodeModel.dart';

class VerifyCodeApi extends ApiManager{
  @override
  String apiUrl() {
    print('url verifyCode===== ${AppConfig.verifyCode_url}');
    return AppConfig.verifyCode_url ;
  }

  @override
  AbstractJsonResource fromJson(data) {
    return VerifyCodeModel.fromJson(data);
  }}