import 'package:get/get.dart';
import 'package:kid_app/screens/intro/intro_controller.dart';

class IntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
  }

}