import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:illizi/networking/loginApi.dart';
import 'package:illizi/view/categoryView.dart';
import 'package:illizi/view/listeView.dart';

import '../models/User.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();

  LoginApi loginApi = LoginApi();
  UserModel? userModel;

  login(context) {
    print('login*********************');
    loginApi.postData({"email": email.text, "password": password.text}).then(
        (value) => {
              userModel = value as UserModel,
              print('user=========> $userModel'),
         // Get.to(ListeView())
            });
  }
}
