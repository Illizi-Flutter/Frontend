import 'package:illizi/config/app_config.dart';
import 'package:illizi/models/User.dart';
import 'package:illizi/models/abstractJson.dart';
import 'package:illizi/models/registerUserModel.dart';
import 'package:illizi/networking/apiManager.dart';

class RegisterApi extends ApiManager{
  @override
  String apiUrl() {
    print('url register=====> ${AppConfig.register_url}');
    return AppConfig.register_url ;
  }

  @override
  AbstractJsonResource fromJson(data) {
    print('data===============> $data');
    return RegisterUserModel.fromJson(data);
  }

}