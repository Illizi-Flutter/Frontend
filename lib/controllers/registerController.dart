import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:illizi/networking/registerApi.dart';
import 'package:illizi/view/loginView.dart';

import '../models/User.dart';
import '../models/registerUserModel.dart';

class RegisterController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();

  RegisterApi registerApi = RegisterApi();
  RegisterUserModel? registerUserModel;

  register(context) {
    Map<String, dynamic> data ={"email": email.text, "password": password.text, "username": username.text};
    registerApi.postData(data).then(
            (value) => {
              print('value======> $value'),
              registerUserModel = value as RegisterUserModel,
          Get.to(LoginView())
        });
  }
}
