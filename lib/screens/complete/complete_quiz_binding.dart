import 'package:get/get.dart';

import 'complete_quiz_controller.dart';

class CompleteQuizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompleteQuizController());
  }

}