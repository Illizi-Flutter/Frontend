import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:illizi/controllers/loginController.dart';

import '../config/account_storage.dart';
import '../widget/customModalButton.dart';
import '../widget/customModalTextField.dart';

class ChangePasswordPage extends GetView<LoginController> {
   ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.all(40),
       //color: Colors.red,
          child:
          SingleChildScrollView(child:  Column(
            children: [

              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                 // margin: const EdgeInsets.all(),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Text("Changer mot de passe",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                              ),
                              textAlign: TextAlign.left)),
                      const SizedBox(
                        height: 12,
                      ),
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Text("Ancien mot de passe",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left)),
                      CustomModalTextField(
                        textEditingController: controller.oldPassword,
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 8,
                      ),const Align(
                          alignment: Alignment.topLeft,
                          child: Text("Mot de passe",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left)),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomModalTextField(
                        textEditingController: controller.password,
                        obscureText: false,

                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Text("Confirmer mot de passe",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left)),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomModalTextField(
                        textEditingController: controller.confirmPassword,
                        obscureText: false,

                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      GetBuilder<LoginController>(builder: (c) {
                        return CustomModalButton(
                        color: Colors.blue,
                        text: "Modifier",
                          function: (){
                            print('read email =====> ${ AccountStorage.readEmail()}');
                          print('*****pasword=====> ${controller.password.text} ,${controller.confirmPassword} ');
                            controller.changePassword(context);
                          },
                      );
                      })


                    ],
                  ))
            ],
          ),)
      ),
    );
  }
}
