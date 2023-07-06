import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:illizi/controllers/registerController.dart';
import 'package:illizi/view/loginView.dart';

import '../widget/customBackGroundImage.dart';
import '../widget/customButton.dart';
import '../widget/customTextField.dart';
import 'listeView.dart';

class RegisterView extends GetView<RegisterController> {

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CustomBackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  width: 130,
                ),

                SizedBox(
                  height: 8,
                ),

                const Text('Bienvenue',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'UbuntuCondensed',
                        fontSize: 35)),
                SizedBox(
                  height: 8,
                ),
                const Text('Créez un compte',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'UbuntuCondensed',
                        fontSize: 21)),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: const Offset(0.1, 1),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: CustomTextField(
                        label: 'Nom Utilisateur',
                        hintText: 'Username has to be unique',
                        icon: Icon(
                          Icons.person_rounded,
                          size: 40,
                          color: Colors.blue,
                        ),
                        obscureText: false, textEditingController: controller.username,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: const Offset(0.1, 1),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: CustomTextField(
                        label: 'Email',
                        hintText: 'Enter valid email id as example@gmail.com',
                        icon: Icon(
                          Icons.email_rounded,
                          size: 40,
                          color: Colors.blue,
                        ),
                        obscureText: false, textEditingController: controller.email,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 2),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child:  CustomTextField(
                        label: 'Password',
                        hintText:
                            'Enter secure password between 6 and 8 characters',
                        icon: Icon(Icons.lock_rounded,
                            size: 40, color: Colors.blue),
                        obscureText: true,
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.blue,
                        ), textEditingController: controller.password,
                      )),
                ),
                SizedBox(
                  height: 8,
                ),

                CustomButton(
                    text: "S'inscrire",
                    color: Colors.blue,
                    function: () {
                      print('register');
                      print('username====>${controller.username.text}');
                      print('email====>${controller.email.text}');
                      print('password====>${controller.password.text}');
                      controller.register(context);

                      }),

                //Container(
                //child:
                //),
              ],
            ), /*
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/images/bottom left background.png',
              width: 82,
              height: 73,
            ),
          ),*/
          )),
    ]);
  }
}
