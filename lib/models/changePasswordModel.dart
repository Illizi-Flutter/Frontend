import 'package:illizi/models/abstractJson.dart';

class ChangePasswordModel extends AbstractJsonResource {
  String? response;
  Data? data;

  ChangePasswordModel({this.response, this.data});

  ChangePasswordModel.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? email;
  String? password;
  String? confirmPassword;
  String? oldPassword;

  Data({this.email, this.password, this.confirmPassword, this.oldPassword});

  Data.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
    oldPassword = json['oldPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['confirmPassword'] = this.confirmPassword;
    data['oldPassword'] = this.oldPassword;
    return data;
  }
}