import 'package:get/get.dart';

import 'indice_controller.dart';

class IndiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndiceController>(() => IndiceController());
  }

}