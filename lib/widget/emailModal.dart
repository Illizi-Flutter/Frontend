import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:illizi/controllers/loginController.dart';
import 'package:illizi/widget/activationCodeModal.dart';
import 'package:illizi/widget/customButton.dart';
import 'package:illizi/widget/customModalButton.dart';

import 'customModalTextField.dart';

class EmailModal extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: 8.5,
              width: 85,
            ),
            Container(
                margin: const EdgeInsets.all(35),
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text("Mot de passe oublié",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.left)),
                    const SizedBox(
                      height: 14,
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                            "Entrer votre email pour le processus de verification, "
                            "nous allons vous envoyer 4 chiffres de code à "
                            "votre email.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.left)),
                    const SizedBox(
                      height: 24,
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text("E-mail",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left)),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomModalTextField(
                      textEditingController: controller.emailCode,
                      label: 'example@gmail.com',
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    GetBuilder<LoginController>(builder: (c){
                      return CustomModalButton(
                          color: Colors.blue,
                          text: "Continuer",
                          function: () {
                            print('reset password--------------> ${c.emailCode.text}');
                            controller.resetCode(context);
                          }

                      );
                    }),
                    const SizedBox(
                      height: 300,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
