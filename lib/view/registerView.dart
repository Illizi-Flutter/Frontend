import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:illizi/controllers/registerController.dart';
import 'package:illizi/view/loginView.dart';

import '../widget/customBackgroundImage.dart';
import '../widget/customButton.dart';
import '../widget/customTextField.dart';
import 'listeView.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const CustomBackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                        size: 32,
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  width: 130,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text('Bienvenue',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'UbuntuCondensed',
                        fontSize: 35)),
                const SizedBox(
                  height: 8,
                ),
                const Text('Créez un compte',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'UbuntuCondensed',
                        fontSize: 21)),
                const SizedBox(
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
                      icon: const Icon(
                        Icons.person_rounded,
                        size: 40,
                        color: Colors.blue,
                      ),
                      obscureText: false,
                      textEditingController: controller.username,
                    ),
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
                      icon: const Icon(
                        Icons.email_rounded,
                        size: 40,
                        color: Colors.blue,
                      ),
                      obscureText: false,
                      textEditingController: controller.email,
                    ),
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
                      child: CustomTextField(
                        label: 'Password',
                        hintText:
                            'Enter secure password between 6 and 8 characters',
                        icon: const Icon(Icons.lock_rounded,
                            size: 40, color: Colors.blue),
                        obscureText: true,
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            true
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColorDark,
                          ), onPressed: () {  Icons.visibility_off;},
                        ),
                        // IconButton(
                        //     onPressed: () {
                        //       Icons.visibility_outlined;
                        //     },
                        //     icon: const Icon(
                        //
                        //       Icons.visibility_off,
                        //       color: Colors.blue,
                        //       size: 32,
                        //     )),
                        textEditingController: controller.password,
                      )),
                ),
                const SizedBox(
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
              ],
            ),
          )),
    ]);
  }
}
