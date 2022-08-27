import 'package:base_project/src/controller/controller.dart';
import 'package:base_project/src/service/service.dart';
import 'package:get/get.dart';

class MainBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(AuthService());
    Get.put(ConnectivityService());
    Get.put(MainController());
    Get.put(LoginController());
  }

}