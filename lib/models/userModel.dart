import 'package:illizi/models/abstractJson.dart';

class UserModel extends AbstractJsonResource {
  String? status;
  String? message;
  User? user;
  String? token;

  UserModel({this.status, this.message, this.user, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  String? sId;
  String? username;
  String? email;
  String? password;
  String? image;
  String? role;
  int? iV;

  User(
      {this.sId,
        this.username,
        this.email,
        this.password,
        this.image,
        this.role,
        this.iV});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    image = json['image'];
    role = json['role'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['image'] = this.image;
    data['role'] = this.role;
    data['__v'] = this.iV;
    return data;
  }
}