import 'package:illizi/networking/apiManager.dart';

import '../config/app_config.dart';
import '../models/abstractJson.dart';
import '../models/forgotPasswordModel.dart';

class ForgotPasswordApi extends ApiManager{
  @override
  String apiUrl() {
    return AppConfig.forgotPassword_url ;
  }

  @override
  AbstractJsonResource fromJson(data) {
    return ForgotPasswordModel.fromJson(data);
  }}