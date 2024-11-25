import 'package:get/get.dart';

import 'coin_controller.dart';

class CoinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoinController>(() => CoinController());
  }
}