
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
      print(value.statusCode);
      if(value.statusCode!=200){
        print("value.data !=200");
      }else{

        print("value.data ========200");
        data = value.data;
        json = fromJson(data);
      }


    });


    return json;
  }
  Future<AbstractJsonResource?> putData({dataToPost}) async {

    AbstractJsonResource? json;
    var data;
    print("putdata");
    await dioSingleton.dio
        .patch( apiUrl()  ,data: dataToPost )
        .then((value) {
      print(value.statusCode);
      print("*********");
      if(value.statusCode!=200){
        print("value.data !=200");
      }else{

        print("value.data ========200");
        data = value.data;
        json = fromJson(data);
      }


    });


    return json;
  }
  /// POST DATA TO SERVER
  ///Post Data withOut Token
  Future<AbstractJsonResource?> postData(dataToPost) async {
    print('postdata*******************');
    AbstractJsonResource? json;
    var data;
    return dioSingleton.dio
        .post(
      apiUrl(),
      data: dataToPost,
    )
        .then((value) {
          print('data to post =======> $value');
      data = value.data;
      json = fromJson(data);
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