import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final scrollController = ScrollController();
  final indexScroll = 0.obs;

  @override
  void onInit() {
    super.onInit();

    scrollController.addListener(() {
      indexScroll.value = (scrollController.offset / 240).toInt();
    });
  }


}