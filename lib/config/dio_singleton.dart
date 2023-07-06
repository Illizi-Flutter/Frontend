import 'package:dio/dio.dart';
import 'package:illizi/config/app_config.dart';

class DioSingleton {
  Dio dio = new Dio(BaseOptions(
    baseUrl: AppConfig.base_url,
      receiveDataWhenStatusError: true,
      connectTimeout:  Duration(seconds: 60), // 60 seconds
      receiveTimeout:  Duration(seconds: 60)
  )

  );

  static final DioSingleton _singleton = DioSingleton._internal();
  factory DioSingleton() {
    return _singleton;
  }

  DioSingleton._internal();
}