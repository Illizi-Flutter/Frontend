import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:projet_1/controllers/loginController.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
   Get.put<LoginController>(LoginController());
  }

}