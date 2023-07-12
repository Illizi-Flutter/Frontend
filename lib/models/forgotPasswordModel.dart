import 'package:illizi/models/abstractJson.dart';

class ForgotPasswordModel extends AbstractJsonResource{
  String? status;
  String? message;
  Data? data;

  ForgotPasswordModel({this.status, this.message, this.data});

  ForgotPasswordModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? email;
  String? newPassword;
  String? confirmPassword;

  Data({this.email, this.newPassword, this.confirmPassword});

  Data.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    newPassword = json['newPassword'];
    confirmPassword = json['confirmPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['newPassword'] = this.newPassword;
    data['confirmPassword'] = this.confirmPassword;
    return data;
  }
}