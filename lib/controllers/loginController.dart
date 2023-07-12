import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:illizi/config/account_storage.dart';
import 'package:illizi/networking/loginApi.dart';
import 'package:illizi/view/categoryView.dart';

import 'package:illizi/view/listeView.dart';

import '../models/User.dart';
import '../models/changePasswordModel.dart';
import '../models/forgotPasswordModel.dart';
import '../models/verifyCodeModel.dart';
import '../networking/changePasswordApi.dart';
import '../networking/forgotPasswordApi.dart';
import '../networking/resetCodeApi.dart';
import '../models/ResetCodeModel.dart';
import '../networking/verifyCodeApi.dart';
import '../view/changePasswordPage.dart';
import '../widget/activationCodeModal.dart';
import '../widget/resetPasswordModal.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController emailCode = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();

  TextEditingController oldPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();


  TextEditingController inputCode1 = TextEditingController();
  TextEditingController inputCode2 = TextEditingController();
  TextEditingController inputCode3 = TextEditingController();
  TextEditingController inputCode4 = TextEditingController();

  LoginApi loginApi = LoginApi();
  UserModel? userModel;

  ChangePasswordApi changePasswordApi = ChangePasswordApi();
  ChangePasswordModel? changePasswordModel;

  ForgotPasswordApi forgotPasswordApi = ForgotPasswordApi();
  ForgotPasswordModel? forgotPasswordModel;

  ResetCodeApi resetCodeApi = ResetCodeApi();
  ResetCodeModel? resetCodeModel;

  VerifyCodeApi verifyCodeApi = VerifyCodeApi();
  VerifyCodeModel? verifyCodeModel;

  login(context) {
    print('login*********************');
    loginApi.postData({
      "email": email.text,
      "password": password.text
    }).then((value) => {
          userModel = value as UserModel,
          print('user=========> $userModel'),
          AccountStorage.saveEmail('${userModel!.user?.email}'),
          print('***************************read email**********************'),
          password.text = '',
          email.text = '',
          Get.to(ListeView())
        });
  }

  changePassword(context) {
    Map<String, dynamic> data = {
      "email": AccountStorage.readEmail(),
      "oldPassword": oldPassword.text,
      "password": password.text,
      "confirmPassword": confirmPassword.text
    };
    try {
      print(
          'changePassword********************* ${AccountStorage.readEmail()}');
      changePasswordApi.putData(dataToPost: data).then((value) => {
            print('********************************************* $data'),
            changePasswordModel = value as ChangePasswordModel,
            print('changePassword=========> '),
            password.text = '',
            confirmPassword.text = '',
            Get.to(CategoryView())
          });
    } catch (err) {
      print('error==========+++====> $err');
    }
  }

  resetCode(context) {
    Map<String, dynamic> data = {
      "email": emailCode.text,
    };
    resetCodeApi.putData(dataToPost: data).then((value) => {
          resetCodeModel = value as ResetCodeModel,
          AccountStorage.saveEmail('${resetCodeModel?.emailCode}'),
          emailCode.text = '',
    showModalBottomSheet(
    context: context,
    builder: (context) =>
        ResetPasswordModal())
        });
  }

  verifyCode(context) {
    print('login*********************');
    verifyCodeApi.postData({'resetCode': '${inputCode1.text + inputCode2.text
        + inputCode3.text+ inputCode4.text}','email':AccountStorage.readEmail()
    }).then((value) =>
    {
      verifyCodeModel = value as VerifyCodeModel, print('verifyCode=========> $verifyCodeModel'),
    showModalBottomSheet(
    context: context,
    builder: (context) =>
    ResetPasswordModal())
    }
    );

    }



  forgotPassword(context) {
    Map<String, dynamic> data = {
      "email": AccountStorage.readEmail(),
      "newPassword": password.text,
      "confirmPassword": confirmPassword.text
    };
    forgotPasswordApi.putData(dataToPost: data).then((value) => {
      forgotPasswordModel = value as ForgotPasswordModel,
      password.text = '',
      confirmPassword.text = '',
      Get.to(CategoryView())

    });

  }
}
