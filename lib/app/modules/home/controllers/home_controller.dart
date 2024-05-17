// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class HomeController extends GetxController {

  var count = 0.obs;
  String title = 'Thom App Book';

  incrementCounter() {
    count.value++;
  }
  
  incrementCounterless() {
    count.value--;
  }
  
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
