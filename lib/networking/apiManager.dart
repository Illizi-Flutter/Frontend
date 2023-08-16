
import '../../models/abstractJson.dart';
import '../config/dio_singleton.dart';

abstract class ApiManager {
  final DioSingleton dioSingleton = DioSingleton();

  /// Returns the API URL of current API ressource
  String apiUrl();

  AbstractJsonResource fromJson(data);

  Future<AbstractJsonResource?> getData({data}) async {

    AbstractJsonResource? json;
    var data;
    await dioSingleton.dio
        .get( apiUrl()  ,queryParameters: data )
        .then((value) {
      // print(value.statusCode);
      if(value.statusCode!=200){
        print("value.data !=200");
      }else{
        // print("value.data ========200");
        data = value.data;
        json = fromJson(data);
      }
    });
    return json;
  }
  Future<AbstractJsonResource?> get() async {
    AbstractJsonResource? json;
    var data;
    await dioSingleton.dio
        .get( apiUrl()  ,queryParameters: data )
        .then((value) {
      if(value.statusCode!=200){
        print("value.data !=200");
      }else{
        data = value.data;
        json = fromJson(data);
      }
    });
    return json;
  }
  Future<AbstractJsonResource?> putData({dataToPost}) async {

    AbstractJsonResource? json;
    var data;
    // print("putdata=========> $dataToPost");
    await dioSingleton.dio
        .put( apiUrl()  ,data: dataToPost )
        .then((value) {
      // print(value.statusCode);
      // print("*********");
      if(value.statusCode!=200){
        print("value.data !=200");
      }else{

        // print("value.data ========200");
        data = value.data;
        json = fromJson(data);
      }


    });


    return json;
  }

  Future<AbstractJsonResource?> postData(dataToPost) async {
    print('postdata******************* $dataToPost');

    AbstractJsonResource? json;
    return dioSingleton.dio
        .post(
      apiUrl(),
      data: dataToPost,
    ).then((value) {
      print(value.runtimeType);
      print(value.data.runtimeType);

      print("$value");
      print("${value.data}");

      json = fromJson(value.data);
      return json;
    });
  }

  //Update
  Future securePost({dataToPost}) async {
    AbstractJsonResource? json;
    // dioSingleton.dio.interceptors.add(AppInterceptor());
    var data;
    return dioSingleton.dio
        .post(
      apiUrl(),
      data: dataToPost,
    )
        .then((value) {
      data = value.data;
      json = fromJson(data);
      return json;
    }).catchError((error, stackTrace) {});
  }
}