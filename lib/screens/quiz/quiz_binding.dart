import 'package:get/get.dart';
import 'package:kid_app/screens/quiz/quiz_controller.dart';

class QuizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizController());
  }
}
