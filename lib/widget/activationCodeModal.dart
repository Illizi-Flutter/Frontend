import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:illizi/controllers/loginController.dart';
import 'package:illizi/widget/customButton.dart';
import 'package:illizi/widget/resetPasswordModal.dart';

import 'customActivationCodeBox.dart';
import 'customModalButton.dart';
import 'customModalTextField.dart';

class ActivationCodeModal extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(children: [
        Container(
          margin: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 8.5,
          width: 85,
        ),
        Container(
            margin:  EdgeInsets.all(35),
            child: Column(
              children: [
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Entrer le code de 4 chiffres",
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
                        "Entrer le code de 4 chiffres que vous avez reçu lors de votre mail.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.left)),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomActivationCodeBox(
                        textEditingController: controller.inputCode1,
                      ),
                      CustomActivationCodeBox(
                          textEditingController: controller.inputCode2),
                      CustomActivationCodeBox(
                          textEditingController: controller.inputCode3),
                      CustomActivationCodeBox(
                          textEditingController: controller.inputCode4),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                GetBuilder<LoginController>(builder: (c) {
                  return CustomModalButton(
                      color: Colors.blue,
                      text: "Continuer",
                      function: () {
                        print('***********************${controller.inputCode1.text}');
                       c.verifyCode(context);
                      });
                })
              ],
            ))
      ]),
    );
  }
}
