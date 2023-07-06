import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:illizi/controllers/loginController.dart';

import '../controllers/produitContoller.dart';
import '../controllers/registerController.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
    Get.put<RegisterController>(RegisterController());
    Get.put<ProduitController>(ProduitController());
  }

}