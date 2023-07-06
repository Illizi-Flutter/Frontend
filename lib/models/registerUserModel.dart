import 'abstractJson.dart';

class RegisterUserModel extends AbstractJsonResource {
  String? status;
  String? message;
  User? user;

  RegisterUserModel({this.status, this.message, this.user});

  RegisterUserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? username;
  String? email;
  String? password;
  String? image;
  String? role;
  String? sId;
  int? iV;

  User(
      {this.username,
        this.email,
        this.password,
        this.image,
        this.role,
        this.sId,
        this.iV});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    password = json['password'];
    image = json['image'];
    role = json['role'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['image'] = this.image;
    data['role'] = this.role;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    return data;
  }
}