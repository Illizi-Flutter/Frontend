import 'package:illizi/config/app_config.dart';
import 'package:illizi/models/userModel.dart';
import 'package:illizi/models/abstractJson.dart';
import 'package:illizi/networking/apiManager.dart';

class LoginApi extends ApiManager{
  @override
  String apiUrl() {
    // print('url login =====> ${AppConfig.login_url}');
   return AppConfig.login_url ;
  }

  @override
  AbstractJsonResource fromJson(data) {
    return UserModel.fromJson(data);
  }

}