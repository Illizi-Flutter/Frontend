import 'package:projet_1/config/app_config.dart';
import 'package:projet_1/models/User.dart';
import 'package:projet_1/models/abstractJson.dart';
import 'package:projet_1/networking/apiManager.dart';

class LoginApi extends ApiManager{
  @override
  String apiUrl() {
    print('url login =====> ${AppConfig.login_url}');
   return AppConfig.login_url ;
  }

  @override
  AbstractJsonResource fromJson(data) {
    return UserModel.fromJson(data);
  }

}