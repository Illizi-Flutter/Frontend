import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:illizi/widget/activationCodeModal.dart';
import 'package:illizi/widget/customModalButton.dart';

import '../controllers/loginController.dart';
import 'customModalTextField.dart';

class ResetPasswordModal extends GetView<LoginController> {
  const ResetPasswordModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child:
     SingleChildScrollView(child:  Column(
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
                     child: Text("Réinitialiser le mot de passe",
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
                     child: Text(
                         "Définissez le nouveau mot de passe pour votre compte afin de pouvoir vous connecter "
                             "et accéder à toutes les fonctionnalités.",
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 13,
                         ),
                         textAlign: TextAlign.left)),
                 const SizedBox(
                   height: 8,
                 ),
                 const Align(
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

                 ),
                 const SizedBox(
                   height: 8,
                 ),
                 CustomModalButton(
                     color: Colors.blue,
                     text: "Continuer",
                     function: () {
                       controller.forgotPassword(context);
                     }
                 ),
                 SizedBox(
                   height: 300,
                 )

               ],
             ))
       ],
     ),)
    );
  }
}
