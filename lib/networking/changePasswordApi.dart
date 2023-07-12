import 'package:illizi/models/categorieModel.dart';
import 'package:illizi/networking/apiManager.dart';

import '../config/app_config.dart';
import '../models/abstractJson.dart';
import '../models/changePasswordModel.dart';

class ChangePasswordApi extends ApiManager{
  @override
  String apiUrl() {
    print('url changePassword_url =====> ${AppConfig.changePassword_url}');
    return AppConfig.changePassword_url ;
  }

  @override
  AbstractJsonResource fromJson(data) {



    print('data===============> $data');
    return ChangePasswordModel.fromJson(data);
  }}