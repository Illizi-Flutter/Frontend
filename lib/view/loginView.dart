import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet_1/controllers/loginController.dart';
import 'package:projet_1/view/categoryView.dart';
import 'package:projet_1/view/listeView.dart';
import 'package:projet_1/view/registerView.dart';
import 'package:projet_1/widget/customBackGroundImage.dart';
import 'package:projet_1/widget/customButton.dart';
import 'package:projet_1/widget/customTextField.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CustomBackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child:
            Column(
              children: [
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .1,
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
                const Text('Connectez-vous à votre compte',
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
                        label: 'Email',
                        hintText: 'Enter valid email id as example@gmail.com',
                        icon: Icon(
                          Icons.email_rounded,
                          size: 40,
                          color: Colors.blue,
                        ), obscureText: false, textEditingController: controller.email,),
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
                          icon: Icon(Icons.lock_rounded,
                              size: 40, color: Colors.blue),
                          obscureText: true,
                          suffixIcon: Icon(
                            Icons.visibility_off, color: Colors.blue,
                          ), textEditingController: controller.password,)),
                ),
                SizedBox(
                  height: 8,
                ),

                CustomButton(
                    text: 'Connexion', color: Colors.blue,
                    function: () {
                      controller.login(context);
                    }
                //   Navigator.of(context).push(
                //       MaterialPageRoute(builder: (context) => CategoryView()));
                //
                 // }
                  ),

                const SizedBox(
                  height: 30,
                ),
                GestureDetector(child: RichText(
                  text: const TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Pas encore inscrit?'),
                      TextSpan(
                          text: 'Créer un compte',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          )),
                    ],
                  ),
                ), onTap: () {
                  controller.login(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RegisterView()));
                },),
                const SizedBox(
                  height: 30,
                ),
                //Container(
                //child:
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Mot de passe oublié',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          )),
                    ],
                  ),
                ),
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
