import 'package:dio/dio.dart';
import 'package:projet_1/config/app_config.dart';

class DioSingleton {
  Dio dio = Dio(BaseOptions(
    baseUrl: AppConfig.base_url,
      receiveDataWhenStatusError: true,

      connectTimeout: Duration(seconds: 60), // 60 seconds
      receiveTimeout: Duration(seconds: 60),
      headers: <String , String> {
      'Content-Type': 'application/json'
    }
  ));
  static final DioSingleton _singleton = DioSingleton._internal();
  factory DioSingleton() {
    return _singleton;
  }

  DioSingleton._internal();
}